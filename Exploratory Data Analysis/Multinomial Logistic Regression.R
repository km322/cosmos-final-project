alzheimer_data <- readr::read_csv("https://raw.githubusercontent.com/COSMOS-DataScience/slides/main/data/alzheimer_data.csv")
alz=alzheimer_data
attach(alz)


library(nnet)
library(tidyverse)

diag.new = as.factor(diagnosis)

multinomial <- multinom(diag.new ~ delsev + (hallsev)+ (agitsev)+ (depdsev) +  (anxsev) +  (elatsev) +  (apasev) +  (disnsev) +  (irrsev))
summary(multinomial)
alz$predict_diagnosis <-  predict(multinomial, alz)
alz$predict_diagnosis_probability <- predict(multinomial, alz, type = "prob")
alz_diagnosis <- alz[,c("diagnosis", "predict_diagnosis", "predict_diagnosis_probability")]
