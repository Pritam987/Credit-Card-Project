#Before PCA
library(NbClust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
NbClust(data=dataset,method ="kmeans")
#After PCA
library(NbClust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed_after_pca.csv')
NbClust(data=dataset,method ="kmeans")
#Before PCA
library(mclust)
dataset <- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
model=Mclust(dataset)
summary(model) 

#Before PCA - Validation Methods
#v1
library(clValid)
library(mclust)
dataset<- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
rownames(dataset)<-1:nrow(dataset)
summary(clValid(dataset,5, clMethods=c("hierarchical","kmeans","pam","model"),
                  validation="internal"))
#v2
library(clValid)
dataset<- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
rownames(dataset)<-1:nrow(dataset)
summary(clValid(dataset,5,clMethods =c("diana", "fanny"),validation="internal"))
#v3
library(clValid)
dataset<- read.csv('C:\\Users\\Pritam\\Desktop\\Project 4th sem\\Data_processed.csv')
rownames(dataset)<-1:nrow(dataset)
summary(clValid(dataset,5, clMethods=c("som","agnes","clara"),validation="internal"))
