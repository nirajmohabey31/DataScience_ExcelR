Nd<-read.csv("A:/Study Material/EXCELR/DATA SCIENCE DATASETS/WC_AT.csv")

library("lattice")
boxplot(Nd$Waist, main="Dot Plot of Waist Circumference",col="dodgerblue4")
boxplot(Nd$AT, main="Dot Plot of Waist Circumference",col="dodgerblue4")
dotplot(Nd$Waist,col="dodgerblue4")
dotplot(Nd$AT,col="dodgerblue4")

model<-lm(AT~Waist,data= WC_AT)
summary(model)
new<-data.frame(Waist = c(60,70))
pred<-predict(model,newdata = new)
pred<-predict(model)
finaldata<-data.frame(Nd,pred,"Error"=Nd$Waist-pred)
