Nd<-read.csv("A:/Study Material/EXCELR/DATA SCIENCE DATASETS/Newspaper_Data.csv")

library("lattice")
boxplot(Nd$Sunday, main="Dot Plot of Waist Circumference",col="dodgerblue4")
boxplot(Nd$Daily, main="Dot Plot of Waist Circumference",col="dodgerblue4")
dotplot(Nd$Sunday,col="dodgerblue4")
dotplot(Nd$Daily,col="dodgerblue4")


model<-lm(Sunday~Daily,data=NewspaperData)
summary(model)

pred<-predict(model,newdata=data.frame(Daily=300))
pred