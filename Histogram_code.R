ggplot(biometric_data, aes(x = ratio, fill = geslacht)) +
  geom_histogram(alpha = 0.6, position = "identity", bins = 10, color = "black") +
  labs(title = "Verdeling van lengte/breedte-ratio per geslacht",
       x = "Lengte/Breedte Ratio",
       y = "Frequentie") +
  theme_minimal()
