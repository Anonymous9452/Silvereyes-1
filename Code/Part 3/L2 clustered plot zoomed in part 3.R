# Load necessary libraries
library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

# Read the Excel file
data <- read_excel("/Users/marierobert/Desktop/All DataL2.xlsx")

# Select relevant columns
selected_columns <- c("Slope", "Delta", "LowFreq", "HighFreq", "L2")
data <- data %>%
  select(all_of(selected_columns))

# Calculate bandwidth
data <- data %>%
  mutate(Bandwidth = HighFreq - LowFreq)

# Drop any rows with NA values
data <- na.omit(data)

# Perform scaling if needed (optional but recommended for k-means)

data_scaled <- scale(data[, c("Slope", "Delta", "Bandwidth")])

# Unnest the clustered data
clustered_data <- data %>%
  unnest(cols = c(L2))

# Generate a palette with 14 colors
palette <- rainbow(14)

# Create a ggplot for visualization with further reduced point size and alpha blending
p <- ggplot(clustered_data, aes(x = Slope, y = Delta, color = factor(L2))) +
  geom_point(size = 1, alpha = 1) +  # Further reduce point size and add alpha blending
  scale_color_manual(values = palette) + 
  labs(x = "Slope", y = "Delta") +
  theme_minimal() +
  xlim(-55, 35) +  # Set x-axis limits
  ylim(0, 0.4)    # Set y-axis limits

# Add legend on the right side of the plot
p <- p + theme(legend.position = "right")

# Print the plot
print(p)