library(readxl)
library(ggplot2)

# Read the Excel file
data <- read_excel("/Users/marierobert/Desktop/L1Geo-syll.xlsx")

# Plot scatter plot without the red line
ggplot(data, aes(x = Dsonic, y = Dgeo, label = data[[1]])) +
  geom_point() +
  geom_text(vjust = -1) +  # Adjust text alignment
  labs(x = "Dsonic", y = "Dgeo") +
  theme_minimal()