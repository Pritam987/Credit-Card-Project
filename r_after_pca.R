library(NbClust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed_after_pca.csv')
NbClust(data=dataset,method ="kmeans")
