# Load the necessary library
library(readxl)

# Read the Excel file
birdsong_data <- read_excel("/Users/marierobert/Desktop/L0vertical.xlsx")

# Select the data of interest (occurrences of syllables for each site)
data <- birdsong_data[2:5, -1]  # Exclude the first column (syllable names)

# Calculate the Pearson correlation coefficient matrix
correlation_matrix <- cor(data, method = "pearson")

# Print the correlation matrix
print(correlation_matrix)