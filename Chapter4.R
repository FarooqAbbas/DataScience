factor(x=c("High School","College","Masters","Doctorate"),
       levels=c("High School","College","Masters","Doctorate"),
       ordered = TRUE)

apropos("mea")

###########Missing Data###############
##### NA    and      NULL ###########

z<-c(1,2,3,NA,8,4,NA,3)
z
is.na(z)

######NULL########
aboutNULL<- c(NULL,NULL,NULL)
aboutNULL2<-c(1,NULL,NULL)
aboutNULL
aboutNULL2
is.null(aboutNULL)
is.null(aboutNULL2)

d<-NULL
is.null(d)
