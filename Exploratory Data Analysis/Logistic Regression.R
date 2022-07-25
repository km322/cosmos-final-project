alzheimer_data <- readr::read_csv("https://raw.githubusercontent.com/COSMOS-DataScience/slides/main/data/alzheimer_data.csv")
alz=alzheimer_data
attach(alz)

alz <- 
  alz %>% 
  mutate(diagnosis.new = case_when(
    hallsev == 0 ~0,
    hallsev != 0 ~ 1
  ))

diag.new<-as.factor(diagnosis.new)

diag.logistic<-glm(diag.new~as.factor(delsev)+as.factor(hallsev)+as.factor(agitsev)+as.factor(depdsev) + as.factor(anxsev) + as.factor(elatsev) + as.factor(apasev) + as.factor(disnsev) + as.factor(irrsev),family=binomial)
summary(diag.logistic)