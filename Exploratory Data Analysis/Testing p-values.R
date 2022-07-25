alzheimer_data <- readr::read_csv("https://raw.githubusercontent.com/COSMOS-DataScience/slides/main/data/alzheimer_data.csv")
alz=alzheimer_data
dim(alz)
attach(alz)

library(tidyverse)

chisq.test(table(diagnosis,depdsev))
chisq.test(table(diagnosis,depdsev))
chisq.test(table(diagnosis,anxsev))
chisq.test(table(diagnosis,nitesev))

diagnosis


#alz <- 
# alz %>% 
#mutate(binary_hallsev = case_when(
# irrsev == 0 ~0,
#irrsev != 0 ~ 1
#))

alz <- 
  alz %>% 
  mutate(delsev = case_when(
    delsev == 0 ~0,
    delsev != 0 ~ 1
  ))

chisq.test(table(diagnosis,disnsev))

#fisher.test(table(alz$diagnosis, alz$disnsev))
fisher.test(table(alz$diagnosis, alz$delsev))


