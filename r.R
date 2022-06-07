library(stats)
library(dplyr)
library(ggplot2)


dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data.csv')
dataset=subset(dataset,select=-c(CUST_ID))
print(dataset)


View(dataset)
str(dataset)


is.na(dataset)
sum(is.na(dataset))
colSums(is.na(dataset))
dataset$CREDIT_LIMIT[is.na(dataset$CREDIT_LIMIT)] <- mean(dataset$CREDIT_LIMIT, na.rm = TRUE)
dataset$MINIMUM_PAYMENTS[is.na(dataset$MINIMUM_PAYMENTS)] <- mean(dataset$MINIMUM_PAYMENTS, na.rm = TRUE)
colSums(is.na(dataset))


boxplot(dataset)
boxplot(dataset$CREDIT_LIMIT)
col = c('BALANCE','BALANCE_FREQUENCY','PURCHASES','ONEOFF_PURCHASES','INSTALLMENTS_PURCHASES','CASH_ADVANCE','PURCHASES_FREQUENCY', 'ONEOFF_PURCHASES_FREQUENCY','PURCHASES_FREQUENCY','CASH_ADVANCE_FREQUENCY','CASH_ADVANCE_TRX','PURCHASES_TRX','CREDIT_LIMIT','PAYMENTS','MINIMUM_PAYMENTS','PRC_FULL_PAYMENT','TENURE')
boxplot(dataset[,col])

View(dataset)


for (x in col)
{
  value = dataset[,x][dataset[,x] %in% boxplot.stats(dataset[,x])$out]
  dataset[,x][dataset[,x] %in% value] = NA
}

colSums(is.na(dataset))

library(tidyr)
dataset = drop_na(dataset)
colSums(is.na(dataset))
View(dataset)

library(NbClust)
NbClust(data=dataset,method ="kmeans")
