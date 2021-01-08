#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")



#Leemos el archivo a analizar
Corredores_Pais<-read.csv("corredores_por_pais.csv", header = TRUE,sep = ",",dec = ".")


#Revisamos la carga de la informacion
head(Corredores_Pais)


#Cargamos paquete faraway
install.packages("faraway")

library(faraway)
#Cargamos el grafico de burbujas
symbols(Corredores_Pais$Pais, Corredores_Pais$total_por_Pais, circles=Corredores_Pais$total_por_Pais, bg=rainbow(12),
        xlab="Pais" ,ylab = "Corredores")

#Agregamos los nombres de los paises a las burbujas
text(x=Corredores_Pais$Pais, y=Corredores_Pais$total_por_Pais,Corredores_Pais$Pais, cex=0.8)
