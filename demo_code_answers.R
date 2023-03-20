# Code for ggplot demo

print("hello world")

install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

?ggplot2
?ggplot2::geom_point

print("hello world!")

penguins
head(penguins)

ggplot(data = penguins)

summary(penguins)

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = species)) +
  geom_bar()

ggplot(data = penguins, 
       aes(x = species, y = bill_length_mm, color = species)) +
  geom_boxplot()

ggplot(data = penguins, 
       aes(x = bill_length_mm)) + 
  geom_histogram()

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm, 
           color = species)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm, 
           shape = species)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm, 
           color = species, shape = species)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm, 
           color = species)) +
  geom_point()

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species))

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(color = "red", shape = 15)

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) 

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) +
  scale_x_continuous(breaks = scales::breaks_pretty())

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4"), 
                     labels = c("Adelie" = "A",
                                "Chinstrap" = "B",
                                "Gentoo" = "C"), 
                     name = "Penguin Species") +
  scale_x_continuous(trans = "log", breaks = scales::breaks_log())

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) +
  labs(x = "Bill length (mm)", y = "Bill depth (mm)")

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) +
  lims(x = c(NA, 40))

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) +
  labs(x = "Bill length (mm)", y = "Bill depth (mm)", 
       tag = "A", 
       color = "Penguin species") +
  theme_bw() +
  theme(legend.position = "bottom", axis.title = element_text(face = "bold"), 
        axis.text.x = element_text(size = 15), panel.border = element_blank())

demo_plot <-
  ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "darkorange",
                                "Chinstrap" = "purple",
                                "Gentoo" = "cyan4")) +
  labs(x = "Bill length (mm)", y = "Bill depth (mm)", 
       tag = "A", 
       color = "Penguin species") +
  theme_bw()
demo_plot
ggsave("demo_plot.png", demo_plot, height = 5, width = 7)
