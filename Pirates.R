
#install.packages("yarrr")
library(yarrr)
library(ggplot2)
library(dplyr)

data(pirates)

pirates_clean <- pirates %>%
  filter(!is.na(age), !is.na(tattoos), !is.na(sex))

ggplot(pirates_clean, aes(x = age, y = tattoos, color = sex)) +
  geom_point(alpha = 0.6, size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Relationship Between Age and Tattoos in Pirates",
    subtitle = "Examining trends and differences by sex",
    x = "Age",
    y = "Number of Tattoos",
    color = "Sex"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold"),
    plot.subtitle = element_text(size = 10)
  )