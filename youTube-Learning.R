rm(list = ls(all = TRUE))

titanic_train<-read.csv(file.choose())
class(titanic_train)
str(titanic_train)

install.packages("reader")
library(readr)
titanic<-read_csv("train.csv")
titanic

m<-matrix(c(1,2,3,4),2,2)
m
apply(m,1,sum)
apply(m,2,sum)
apply(m,1,mean)
apply(m,2,mean)
#################################################
nyc<- list(pop<- 345670,
           boroughs<-c("Manhattan","Bronx","Brooklyn","Queens","Staten Island"),
           capital<-FALSE)
lapply(nyc,class)
unlist(lapply(nyc,class))
data<- list(x=1:5,y=6:10,z=11:15)
data
lapply(data,FUN = median)
sapply(data,FUN=median)
vapply(data,sum, FUN.VALUE = double(1))
vapply(data,range, FUN.VALUE = double(2))
###################################
age<- c(30,35,35,34,33,43,32)
gender<-c('m','f','f','m','f','m','f')
f<-factor(gender)
tapply(age,gender,mean)
###################################
mapply(rep,c(2,4,5,7) ,c(8,3,5,7))
###################################
install.packages("dplyr")
install.packages("hflights")

library(dplyr)
library(hflights)
head(hflights)
summary(hflights)
str(hflights)  
class(hflights)
hflights<-tbl_df(hflights)
class(hflights)
tbl<- select(hflights,ActualElapsedTime,AirTime,ArrDelay,DepDelay)
str(tbl)
hflights$ActualElapsedTime
hflights[,"AirTime"]
select(hflights, ends_with("Num"))
select(hflights, starts_with("Cancel"))
select(hflights, UniqueCarrier,ends_with("Num"),starts_with("Cancel"))
##############################################

g2<-mutate(hflights,loss=ArrDelay-DepDelay)
g2
g1<-mutate(hflights,ActualGroundTime=ActualElapsedTime-AirTime)
g1
#############################
long_flight<- filter(hflights,Distance>=3000)
View(long_flight)
glimpse(long_flight)
###############################

All_Day_Journey<-filter(hflights,DepDelay>00,ArrDelay<00)
All_Day_Journey

cancelled_Delay<-filter(hflights,Cancelled==1,DepDelay>0)
cancelled_Delay
View(cancelled_Delay)
