data_soap <- soap_example
head(data_soap)

# regression models

# model 1
model1<-lm(Yi~Xi1, data=data_soap)
summary(model1)
anova(model1)  #Type 1 sum of squares

#model 2
model2<-lm(Yi~Xi2, data=data_soap)
summary(model2)
anova(model2)  #Type 1 sum of squares

#model 3  most suitable model
model3<-lm(Yi~Xi1 + Xi2, data=data_soap)
summary(model3)
anova(model3)

#model 4
model4<-lm(Yi~Xi1 + Xi2 + Xi1*Xi2, data=data_soap)
summary(model4)
anova(model4)
 