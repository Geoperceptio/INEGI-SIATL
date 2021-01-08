#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#Leemos la informacion del archivo

retornos<-read.csv("indices bursatiles.csv", header = TRUE,sep = ",",dec = ".")


#instalar paquete y libreria
install.packages("xts",dependencies = TRUE)
library(xts)


# Creamos un objeto de tipo extensible time series ------------------------

retornos_xts <- xts(retornos[,-1], order.by = as.Date(retornos[,1],format="%m/%d/%y"))


# Escogemos los colores --------------------------------------------------
arcoiris<- rainbow(ncol(retornos_xts))


# Grafico Basico R --------------------------------------------------------
plot.xts(retornos_xts,col =arcoiris,
         main = "Retornos Logaritmicos de los Indices",
         cex=0.5, cex.axis=0.7, major.ticks = "days",
         legend.loc = "bottomleft")

#Graficar los retornos de algunos indices

plot.xts(retornos_xts[,1:3],col =arcoiris,
         main = "Retornos Logaritmicos de los Indices FCHI, GDAXI e IBEX ",
         cex=0.5, cex.axis=0.7, major.ticks = "days",
         legend.loc = "bottomleft")


                          