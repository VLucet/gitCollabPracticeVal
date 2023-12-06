library(tidyverse)

data("iris")

ggplot(aes(x=Sepal.Length,y=Sepal.Width,colour=Species),data=iris)+
  geom_point(alpha=0.5)
