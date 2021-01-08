#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#Leemos el archivo a analizar
corredores<-read.csv("categorias de corredores.csv", header = TRUE,sep = ",",dec = ",",row.names =1)

#veamos como cargo la informacion
head(corredores)

class(corredores$Velocidad)


Velocidades<- summary(corredores$Velocidad)

Velocidades

barplot(Velocidades)
