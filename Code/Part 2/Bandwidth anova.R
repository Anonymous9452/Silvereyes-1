# Load necessary library for reading Excel files
library(readxl)

# Read the Excel file
file_path <- "/Users/marierobert/Desktop/All Data.xlsx"
bird_data <- read_excel(file_path)

# Convert Site column to factor
bird_data$Loc <- factor(bird_data$Loc)

# Print levels of Site
print(levels(bird_data$Loc))

# Calculate bandwidth
bird_data$Bandwidth <- bird_data$HighFreq - bird_data$LowFreq

# Perform ANOVA for bandwidth
anova_result_bandwidth <- aov(Bandwidth ~ Loc, data = bird_data)

# Print ANOVA results for bandwidth
summary(anova_result_bandwidth)