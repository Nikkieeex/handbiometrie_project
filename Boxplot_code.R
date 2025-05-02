biometric_data <- read.csv("hand_metingen.csv")
head(biometric_data)
biometric_data$ratio <- biometric_data$lengte / biometric_data$breedte
head(biometric_data)
tapply(biometric_data$ratio, biometric_data$geslacht, mean)
tapply(biometric_data$ratio, biometric_data$geslacht, sd)
shapiro.test(biometric_data$ratio)
female_ratios <- subset(biometric_data, geslacht == "V", select = ratio, drop = TRUE)
male_ratios <- subset(biometric_data, geslacht == "M", select = ratio, drop = TRUE)
t.test(female_ratios, male_ratios)
library(ggplot2)
ggplot(biometric_data, aes(x = geslacht, y = ratio, fill = geslacht)) +
  geom_boxplot() +
  labs(title = "Lengte/Breedte Ratio per Geslacht", x = "Geslacht", y = "Lengte/Breedte Ratio") +
  theme_minimal()


