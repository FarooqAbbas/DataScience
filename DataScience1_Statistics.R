#****Descriptive Statistics********
set.seed(1)
data=runif(20,1,10)
hist(data,bins=10,range=c(0,10),edgecolor='black')
mean=mean(data)
print(mean)
print(median(data))

mode<- function(x){
  ux<-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
result<-mode(data)
print(data)
cat("Mode={}",result)

variance<-var(data)
standardDeviation=sqrt(var(data))
print(variance)
print(standardDeviation)
