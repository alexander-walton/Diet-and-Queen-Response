setwd("~/Google Drive/Pollen Restriction Retinue 2015")

day7<-read.csv("Acute Diet Restriction day7.csv")
total<-day7$obs1+day7$obs2+day7$obs3+day7$obs4+day7$obs5+day7$obs6
total
survivorstimes6<-day7$Survivors*6
proportion<-total/survivorstimes6
proportion<-total/day7$Survivors
proportion
day7$total<-total
head(day7)
day7$proportion<-proportion
head(day7)
write.csv("day7", "Acute Diet Restriction day7 cleaned.csv")

##changing to long form
library(tidyr)
day72<-gather(day7, "obs", "counts",7:12)
head(day72)
write.csv(day72, "day72.csv")

day7long<-read.csv("day7longformat.csv")
head(day7long)