# Load the necessary packages
library(vegan)
library(readxl)

# Set the file paths for the geographical distance matrix and the dissimilarity matrix
geo_file <- "/Users/marierobert/Desktop/gen.xlsx"  # Geographical distance matrix file path
diss_file <- "/Users/marierobert/Desktop/syll.xlsx"  # Dissimilarity matrix file path

# Read the geographical distance matrix and dissimilarity matrix from Excel files
geo_df <- readxl::read_excel(geo_file)
diss_df <- readxl::read_excel(diss_file)
# Convert tibbles to data frames
geo_df <- as.data.frame(geo_df)
diss_df <- as.data.frame(diss_df)

# Set row names to the first column (Site titles)
rownames(geo_df) <- geo_df[, 1]
rownames(diss_df) <- diss_df[, 1]

# Remove the first column (Site titles) from the data frames
geo_df <- geo_df[, -1]
diss_df <- diss_df[, -1]
# Perform Mantel test with the geographical distance matrix and the dissimilarity matrix
mantel_result <- mantel(geo_df, diss_df, method = "pearson", permutations = 999)

# Print the Mantel test result
print(mantel_result)

