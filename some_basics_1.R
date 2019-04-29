LungCapData<-read.table(file.choose(), sep = "\t" , header = T)

dim(LungCapData)

head(LungCapData)

tail(LungCapData)

LungCapData[c(5,6,7,8,9),]

LungCapData[-(4:722),]

names(LungCapData)

mean(Age)

mean(LungCapData$Age)

attach(LungCapData)

class(LungCap)

class(Smoke)

class(Gender)

class(Caesarean)

levels(Smoke)

levels(Gender)

summary(LungCapData)

length(Age)

Age[11:14]

LungCapData[11:14,]

mean(Age[Gender=="female"])

levels(Gender)



mean(Age[Gender=="male"])

FemData <- LungCapData[Gender=="female",]

MaleData <- LungCapData[Gender=="male",]

dim(MaleData)
dim(FemData)

summary(Gender)

FemData[1:4,]

MaleOver15 <- LungCapData[Gender=="male" & Age > 15,]

MaleOver15[1:4,]

Age[1:5]

temp<-Age>15
temp[1:5]
temp2<-as.numeric(Age>15)
temp2[1:5]

FemSmoke <- Gender=="female" & Smoke =="yes"
FemSmoke[1:5]

MoreData<-cbind(LungCapData,FemSmoke)
MoreData[1:5,]
