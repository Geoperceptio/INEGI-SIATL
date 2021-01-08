#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")



#Leemos el archivo a analizar
Estudiantes_Ba<-read.csv("Estudiantes.csv", header = TRUE,sep = ",",dec = ".",row.names = 1)


#Revisamos la carga de la informacion
head(Estudiantes_Ba)


#Grafico de Barras basicos de R

barplot(Estudiantes_Ba$Matematicas,main = "Calificaciones de Matematicas",
        names.arg = row.names(Estudiantes_Ba), ylim = c(0,10), col="green")

#Ejemplo 2 utilizando ggplot2, graficando cuantos corredores hay de cada pais con un filtro
#emplearemos la base Latinos

Latinos<-read.csv("Latinos.csv", header = TRUE,sep = ",",dec = ".",row.names = 1)

library(dplyr)

#Indicamos que queremos agrupar por los datos por nombre de pais de cada corredor
por_pais<-group_by(Latinos,Pais)

por_pais

#Contamos cuantos corredores hay por pais
corredores_por_pais<-summarise(por_pais, tot_por_pais=length(Pais))

#se puede respaldar con un nuevo nombre "Corredores Latinos por Pais"
write.csv(corredores_por_pais,"Corredores Latinos por Pais.csv")


# Graficos Basicos de R  --------------------------------------------------

barplot(corredores_por_pais$tot_por_pais,names.arg = corredores_por_pais$Pais,
        main = "Corredores por Pais", ylim = c(0,16), col = topo.colors(12))



