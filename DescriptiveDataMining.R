install.packages("gapminder")
library(gapminder)
data("gapminder")
View(gapminder)
install.packages("dplyr")
library(dplyr)

df1<-gapminder %>% 
  select(country,lifeExp) %>% 
  filter(country=="South Africa" | country=="Ireland")
  t.test (data= df1,lifeExp~country)
library(ggplot2)  
gapminder %>%
  filter(gdpPercap<50000) %>%
  ggplot(aes(x=gdpPercap,y=lifeExp))+
  geom_point()