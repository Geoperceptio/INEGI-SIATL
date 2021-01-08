#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#leemos el archivo objetivo
produccion<-read.csv(file ="produccion_agricola.csv",header = TRUE,sep = ",",dec = ".")

#Obtenemos la columna Edad y Produccion que son las que me interesa conocer
individuos <- produccion[ ,c(2,4)]

#Guardamos solamente los tres primeros individuos para compararlos
tres_individuos<-individuos[1:3, ]

str(tres_individuos)

#Convertimos el dataframe tres_individuos en una matrix para poder hacer el grafico de barras
tres_individuos<- as.matrix(tres_individuos)

#Graficando las edades y la produccion
barplot(tres_individuos, beside = TRUE, main="ComparaciÃ³n de individuos")

#Utilizaremos el paquete scales
install.packages("scales", dependencies = TRUE)
library(scales)

#Ahora rescalaremos los valores para poder apreciar las diferencias en el GrÃ¡fico de barras
individuos$Edad_rescaled<- rescale(individuos$Edad)
individuos$produccion_rescaled<- rescale(individuos$Produccion)

#vemos el resumen de las variables nuevas rescaladas
summary(individuos)


#Obtenemos la columna Edad_rescalado y Produccion_rescalado que son las que me interesa conocer
individuos <- produccion[ ,c(2,4)]


#Guardamos los tres primeros individuos para realizar la comparacion ya re-escalados
tres_individuos_escalado<-individuos[1:3, c(3,4)]

#Convertimos el dataframe tres_individuos_re-escalado en una matrix para poder hacer el grafico de barras
tres_individuos_escalado<- as.matrix(tres_individuos_escalado)

#Graficando las edades y la produccion rescalados
barplot(tres_individuos_escalado, beside = TRUE, main="ComparaciÃ³n de individuos")






