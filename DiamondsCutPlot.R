
library(ggplot2)

ggplot(data = diamonds, aes(x = carat, y = price, color = cut))+
  geom_point(alpha = 0.3, size = 1)+
  geom_smooth(method = "lm", se = FALSE)+
  labs(
    title = "Diamond Price vs Carat by Cut",
    x = "Size of Diamond (carat)",
    y = "Price of Diamond (USD)",
    color = "Cut"
  )+
  theme_minimal()