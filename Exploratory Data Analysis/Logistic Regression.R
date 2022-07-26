alzheimer_data <- readr::read_csv("https://raw.githubusercontent.com/COSMOS-DataScience/slides/main/data/alzheimer_data.csv")
alz=alzheimer_data
attach(alz)
library(tidyverse)

alz <- 
  alz %>% 
  mutate(diagnosis = case_when(
    diagnosis == 0 ~0,
    diagnosis != 0 ~ 1
  ))

diag.new<- as.factor(diagnosis)

diag.logistic<-glm(diag.new~delsev+ (hallsev)+ (agitsev)+ (depdsev) +  (anxsev) +  (elatsev) +  (apasev) +  (disnsev) +  (irrsev),family=binomial)
summary(diag.logistic)