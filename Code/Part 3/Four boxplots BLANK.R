# Load necessary libraries
library(ggplot2)
library(gridExtra)

# Manually enter your values for the first boxplot
delta_values <- c(Median = , Q1 = , Q3 = , Mean = )
delta_sd <-   # Standard deviation for delta

# Create a data frame for the first boxplot
df_delta <- data.frame(
  Variable = names(delta_values),
  Value = delta_values
)

# Create the first boxplot
basic_boxplot_delta <- ggplot(df_delta, aes(x = "", y = Value)) +
  geom_boxplot(width = 0.5, fill = "lightcoral", color = "black") +
  geom_hline(yintercept = delta_values["Mean"], linetype = "dashed", color = "red", size = 1) +
  geom_errorbar(ymin = delta_values["Mean"] - delta_sd, ymax = delta_values["Mean"] + delta_sd, width = 0.2, color = "black") +
  labs(x = "Delta", y = "Hz") +
  ggtitle("") +  # Add title for the first plot
  theme_minimal() +
  ylim(0.03, 0.27)  # Set y-axis range

# Manually enter your values for the second boxplot
slope_values <- c(Median = , Q1 = , Q3 = , Mean = )
slope_sd <-   # Standard deviation for slope

# Create a data frame for the second boxplot
df_slope <- data.frame(
  Variable = names(slope_values),
  Value = slope_values
)

# Create the second boxplot
basic_boxplot_slope <- ggplot(df_slope, aes(x = "", y = Value)) +
  geom_boxplot(width = 0.5, fill = "turquoise3", color = "black") +
  geom_hline(yintercept = slope_values["Mean"], linetype = "dashed", color = "red", size = 1) +
  geom_errorbar(ymin = slope_values["Mean"] - slope_sd, ymax = slope_values["Mean"] + slope_sd, width = 0.2, color = "black") +
  labs(x = "Slope", y = "Hz/ms") +
  ggtitle("") +  # Add title for the second plot
  theme_minimal() +
  ylim(-20.5, 3.9)  # Set y-axis range

# Manually enter your values for the third boxplot
bandwidth_values <- c(Median = , Q1 = , Q3 = , Mean = )
bandwidth_sd <-   # Standard deviation for bandwidth

# Create a data frame for the third boxplot
df_bandwidth <- data.frame(
  Variable = names(bandwidth_values),
  Value = bandwidth_values
)

# Create the third boxplot
basic_boxplot_bandwidth <- ggplot(df_bandwidth, aes(x = "", y = Value)) +
  geom_boxplot(width = 0.5, fill = "gold", color = "black") +
  geom_hline(yintercept = bandwidth_values["Mean"], linetype = "dashed", color = "red", size = 1) +
  geom_errorbar(ymin = bandwidth_values["Mean"] - bandwidth_sd, ymax = bandwidth_values["Mean"] + bandwidth_sd, width = 0.2, color = "black") +
  labs(x = "Bandwidth", y = "Hz") +
  ggtitle("") +  # Add title for the first plot
  theme_minimal() +
  ylim(506, 2643)  # Set y-axis range

# Manually enter your values for the fourth boxplot
lowfreq_values <- c(Median = , Q1 = , Q3 = , Mean = )
lowfreq_sd <-   # Standard deviation for lowfreq

# Create a data frame for the fourth boxplot
df_lowfreq <- data.frame(
  Variable = names(lowfreq_values),
  Value = lowfreq_values
)

# Create the fourth boxplot
basic_boxplot_lowfreq <- ggplot(df_lowfreq, aes(x = "", y = Value)) +
  geom_boxplot(width = 0.5, fill = "springgreen2", color = "black") +
  geom_hline(yintercept = lowfreq_values["Mean"], linetype = "dashed", color = "red", size = 1) +
  geom_errorbar(ymin = lowfreq_values["Mean"] - lowfreq_sd, ymax = lowfreq_values["Mean"] + lowfreq_sd, width = 0.2, color = "black") +
  labs(x = "Low Frequency", y = "Hz") +
  ggtitle("") +  # Add title for the first plot
  theme_minimal() +
  ylim(2423, 3756)  # Set y-axis range

# Arrange both plots in a grid and print
grid.arrange(basic_boxplot_delta, basic_boxplot_slope, basic_boxplot_bandwidth, basic_boxplot_lowfreq, ncol = 4)
