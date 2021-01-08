#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")



#Leemos el archivo a analizar
mtcar20<-read.csv("mtcar.csv", header = TRUE,sep = ",",dec = ".")


#todas las variables deben de ser numericas por lo que quitamos las columnas que
#son numericas

mtcar20$Modelo=NULL

#calculamos la correlacion existente entre las variables

mtcar20_cor <- cor(mtcar20, method = "pearson")

round_corr <- round(mtcar20_cor,digits = 1) #redondeamos los valores de las correlaciones para tener solo un decimal

round_corr

#Creamos la matriz de correlacion con graficos basicos de R
install.packages("corrplot")
library(corrplot)
 corrplot(round_corr)
  

# Matriz correlacion con ggplot2 ------------------------------------------

 install.packages("ggcorrplot")
library(ggcorrplot)  

 ggcorrplot(round_corr, method = "circle", type = "lower", lab = TRUE)+
   ggtitle("Matriz de correlacion")+
   theme_minimal()





