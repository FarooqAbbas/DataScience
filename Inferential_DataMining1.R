#****inferential Statistics********
library(gapminder)
data("gapminder")
View(gapminder)
library(dplyr)
View(gapminder)

#*************What is going on here****************
df1<-gapminder %>%
  select(country,lifeExp) %>%
  filter(country=="Germany" | country=="Pakistan")
  t.test(data=df1,lifeExp~country)
#*************************************************
  
#************************************************  
library(ggplot2)
View(ggplot())
gapminder %>%
  filter(gdpPercap < 50000) %>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp, col=year,size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method = lm)+
  facet_wrap(~continent)
