# Load the necessary library
library(readxl)

# Read the Excel file
birdsong_data <- read_excel("/Users/marierobert/Desktop/L0Distribution.xlsx")

# Calculate the mean occurrence rank for each syllable
birdsong_data$Mean_Rank <- rowMeans(birdsong_data[, 2:5])

# Calculate the correlation between mean occurrence ranks and frequencies
correlation <- cor.test(birdsong_data$Mean_Rank, birdsong_data$Total_Occurrences, method = "spearman")

# Print the correlation coefficient
print(correlation)