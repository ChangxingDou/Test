snacks_data = read.csv("C:\\Users\\doual01\\Desktop\\Dataset\\Analysis-Snacks_R.csv",header = T)
dim(snacks_data)
head(snacks_data)
names(snacks_data)
lm_test = lm(snacks_data$Person.Channel.Reach..~
               as.factor(snacks_data$Gender...Age)+snacks_data$HHSize+
               as.factor(snacks_data$Kids)+as.factor(snacks_data$Social.Class))
attach(snacks_data)
detach(snacks_data)
summary(lm_test)
