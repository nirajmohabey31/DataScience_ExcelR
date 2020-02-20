

model<-lm(sunday~daily,data=NewspaperData)
summary(model)

pred<-predict(model,newdata=data.frame(daily=300))
pred

#predict for 300 daily circulations