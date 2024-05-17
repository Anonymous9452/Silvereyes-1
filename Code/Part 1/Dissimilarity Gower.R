library(readxl)
library(cluster)

# Read the Excel file
birdsong_data <- read_excel("/Users/marierobert/Desktop/L0horizontal.xlsx", range = cell_rows(1:5))

# Retrieve site names and remove the site names from the data frame
site_names <- birdsong_data[[1]]  # Assumes site names are in the first column
birdsong_data <- birdsong_data[-1]  # Removes the first column

# Convert to numeric data for Gower distance calculation
birdsong_numeric <- data.matrix(birdsong_data)

# Compute the observed Gower dissimilarity matrix
gower_dist <- daisy(birdsong_numeric, metric = "gower")
gower_matrix <- as.matrix(gower_dist)

# Set the row and column names to site names
rownames(gower_matrix) <- site_names
colnames(gower_matrix) <- site_names

# Print the observed Gower dissimilarity matrix
cat("Observed Gower Dissimilarity Matrix:\n")
print(gower_matrix)
