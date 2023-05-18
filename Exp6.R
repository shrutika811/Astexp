#Correlation
x<-sample(1:20,20)+rnorm(10,sd=2)
y<-x+rnorm(10,sd=3)
z<-(sample(1:20,20)/2)+rnorm(20,sd=5)
df<-data.frame(x,y,z)
plot(df[,1:3])

cor(df,method="pearson")
cor(df[,1:3],method="spearman")

cor.test(df$x,df$y,method="pearson")
cor.test(df$x,df$y,method="spearman")

#Linear Regression
View(mtcars)
m1<-lm(mpg~cyl,data=mtcars)
summary(m1)

par(mfrow=c(2,2))
dev.off()
plot(m1)

#Transforming the data
mtcars$Mmpg<-log(mtcars$mpg)
plot(Mmpg~cyl,mtcars)
n<-rownames(mtcars)[mtcars$Mmpg!=min(mtcars$Mmpg[mtcars$cyl==8])]
mtcars2<-subset(mtcars,rownames(mtcars)%in%n)
model<-lm(Mmpg~cyl,mtcars2)
summary(model)




