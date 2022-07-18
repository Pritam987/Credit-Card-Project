dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data.csv')
data=na.omit(dataset[,2:18])
library("writexl")
write_xlsx(data,'C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')

library(NbClust)
NbClust(data,method ="kmeans",distance="euclidean",min.nc=2,max.nc=8,index="all")

library(mclust)
model=Mclust(data)
summary(model) 