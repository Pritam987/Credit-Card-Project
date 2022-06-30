library(NbClust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
NbClust(data=dataset,method ="kmeans")

library(mclust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
model=Mclust(dataset)
summary(model) 
