library(readr)
library(ggplot2)
library(dplyr)

titanic <- read_csv("C:/Users/User/Desktop/R_Practice/Exercise_4_Titanic/titanic.csv", n_max = 1309)

ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar (position = "dodge")

ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar (position = "dodge") + 
  facet_grid(.~ survived)

posn.jd <- position_jitterdodge(0.5, 0, 0.6)

ggplot(titanic, aes(x =pclass, y = age, col = sex)) +
  geom_point(position = posn.jd, size = 3, alpha = 0.5) + 
  facet_grid(.~ survived)
