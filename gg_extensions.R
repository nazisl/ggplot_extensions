library(ggplot2)
library(palmerpenguins)
library(gganimate)
library(tidyverse)
setwd("F:/R  Miscellaneous/ggplot_extensions")

#Simply scatter plot
ggplot(penguins, aes(x=body_mass_g, y=flipper_length_mm))+
  geom_point()

#transition based on time
ggplot(penguins, aes(x=body_mass_g, y=flipper_length_mm))+
  geom_point()+
  transition_time(year)

#adding labs
ggplot(penguins, aes(x=body_mass_g, y=flipper_length_mm))+
  geom_point()+
  transition_time(year)+
  labs(title = "Year:{frame_time}")

#based on states and time
ggplot(penguins, aes(x=body_mass_g, y=flipper_length_mm))+
  geom_point()+
  transition_states(year, transition_length = 0.5)+
  labs(title = "Year:{closest_state}")+
  shadow_wake(wake_length = 0.1)


