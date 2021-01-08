#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#leemos el archivo objetivo
corredores<-read.csv(file ="MaratonNY.csv",header = TRUE,sep = ",",dec = ".", row.names = 1)

#vemos como cargo la informacion
head(corredores)
str(corredores)

#definimos los limites que tendra cada categoria
valores<- c(0,200,300,Inf)
categoria<-c("Veloz","Regular","Lento")
#Agregamos una variable nueva en la qu estaran indicadas las categorias asignadas
corredores$Velocidad<- cut(corredores$time, breaks = valores, labels = categoria)

#vemos que tipo de variable es la velocidad
class(corredores$Velocidad)

#Guardamos la información en la computadora
write.csv(corredores,"categorias de corredores.csv")

#si queremos que R determine los valores númericos de cada categoria hacemos lo siguiente:
corredores$Velocidad_R <- cut(corredores$time,breaks = 3, labels = categoria)
