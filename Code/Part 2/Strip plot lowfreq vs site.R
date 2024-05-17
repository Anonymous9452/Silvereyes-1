# Load necessary libraries
library(readxl)    # For reading Excel files
library(ggplot2)   # For data visualization

# Read the Excel file
data <- read_excel("/Users/marierobert/Desktop/All Data.xlsx")

# Create a strip plot
strip_plot <- ggplot(data, aes(x = Loc, y = LowFreq, color = Loc)) +
  geom_jitter(position = position_jitter(width = 0.2), alpha = 0.7) +  # Add jitter to avoid overlapping points
  labs(title = "Strip Plot of Low Frequency by Location",
       x = "Location",
       y = "Low Frequency") +
  scale_color_manual(values = c("#00B0F0", "black")) +  # Set colors for island and mainland
  theme_minimal()

# Display the plot
print(strip_plot)