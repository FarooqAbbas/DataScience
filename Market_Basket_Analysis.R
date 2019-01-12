install.packages("arules")
library(arules)

dataGrocery<- read.transactions("C:/Users/faroo/Downloads/groceries.csv",sep=",")
dataGrocery
summary(dataGrocery)

inspect(dataGrocery[1:3])
inspect(dataGrocery[1001:1003])
itemFrequency(dataGrocery[,1])
itemFrequency(dataGrocery[,1:6])
itemFrequencyPlot(dataGrocery,support=0.08)
itemFrequencyPlot(dataGrocery,topN=5)

model1 <- apriori(dataGrocery)
summary(model1)

model2 <- apriori(dataGrocery,parameter = list(support=0.01,confidence=0.5))
summary(model2)

inspect(model2)

inspect(model2[1:3])

#sorting the rule by lift
inspect(sort(model2,by="lift")[1:5])
#rule for specific item
model3 <- apriori(dataGrocery,parameter = list(support=0.01,confidence=0.2),appearance = list(default="rhs",lhs=c("whole milk","yogurt")))
summary(model3)
inspect(model3)

#visualising model 
install.packages("arulesViz")
library(arulesViz)
plot(model3)
