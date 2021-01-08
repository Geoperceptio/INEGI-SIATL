#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#Graficaremos cuantos de los corredores son mujeres y cuantos son hombres de cada pais

Latinos<-read.csv("Latinos.csv", header = TRUE,sep = ",",dec = ".",row.names = 1)

#creamos una funcion una tabla con la funcion table para consultar cuantos hay por genero de cada pais
Genero_Pais<- table(Latinos$Sexo,Latinos$Pais)
Genero_Pais


# Graficos Basicos de R  --------------------------------------------------

#generamos un objeto para guardar una cadena de vectores con los nombre de los colores

colores<-c("maroon1","mediumblue")


#Elaboración de graficos con barras apiladas

barplot(Genero_Pais,legend.text = rownames(Genero_Pais),
        main = "Genero por Pais", ylim = c(0,16), col = colores,
        args.legend = list(x="topright", cex=0.9))

#Elaboración de graficos con barras Separadas
barplot(Genero_Pais, beside =TRUE,legend.text = rownames(Genero_Pais),
        main = "Genero por Pais", ylim = c(0,16), col = colores,
        args.legend = list(x="topright", cex=1))


# Utilizando el paquete ggplot2 -------------------------------------------
library(ggplot2)
library(dplyr)
#Se debe convertir la tabla Genero_Pais a data frame
Genero_Pais_df<-tibble(Genero_Pais)

Genero_Pais_df
names(Genero_Pais_df)-<c("Genero","Pais","Frecuencia")

