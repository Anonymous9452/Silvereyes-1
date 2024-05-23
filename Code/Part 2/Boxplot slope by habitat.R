# Read the Excel files for mainland and island data
data_mainland <- read_excel("/Users/marierobert/Desktop/All Data1.xlsx")
data_island <- read_excel("/Users/marierobert/Desktop/All Data2.xlsx")

# Create a data frame with Site and Slope columns for mainland and island data
data_slope <- data.frame(
  Site = c(rep("Mainland", nrow(data_mainland)), rep("Island", nrow(data_island))),
  Slope = c(data_mainland$Slope, data_island$Slope)
)

# Create a boxplot comparing mainland and island slopes
boxplot(Slope ~ Site, data = data_slope,
        main = "Boxplot of Slope Data by Site",
        xlab = "Site",
        ylab = "Slope",
        outline = TRUE)