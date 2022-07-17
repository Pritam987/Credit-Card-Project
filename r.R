library(NbClust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
NbClust(data=dataset,method ="kmeans",distance="euclidean",min.nc=2,max.nc=8)

library(mclust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
model=Mclust(dataset)
summary(model) 
