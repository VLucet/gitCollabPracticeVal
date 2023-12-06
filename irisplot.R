library(tidyverse)

data("iris")

ggplot(aes(x=Sepal.Length,y=Sepal.Width,colour=Species),data=iris)+
  geom_point(alpha=0.5)

# more customization
ggplot(aes(x=Sepal.Length,y=Sepal.Width,colour=Species,shape=Species),data=iris)+
  geom_point(alpha=0.8)+
  stat_ellipse()

# pca
iris.pca <- iris %>%
  dplyr::select(1:4) %>%
  prcomp()

# plot pca
autoplot(iris.pca, loadings=TRUE, loadings.label=TRUE)