#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")


#Paquete dplyr, util en el filtrado de las bases de datos
library(dplyr)

#Leemos el archivo a analizar
Estudiantes_D<-read.csv("Estudiantes.csv", header = TRUE,sep = ",",dec = ".",row.names =1)

Estudiantes_D

pairs(data=Estudiantes_D,
      ~Matematicas + Ciencias+ Espanol + Historia+Deportes,
      pch=19,
      main="Calificaciones de Estudiantes")


#Para cargar el Histograma con ggplot2
library(ggplot2)

#Leemos el archivo a analizar
Latinos<-read.csv("Latinos.csv", header = TRUE,sep = ",",dec = ".")
Latinos

ggplot(data=Latinos)+
  geom_point(aes(x=Edad, y=Tiempo))+
  labs(title = "Maraton NY 2002", x="Edades", y="Tiempos")+
  theme_classic()+
  theme(plot.title = element_text(hjust = 0.5))

#Nota para que respete el centrado del titulo, el comando
#theme(plot.title = element_text(hjust = 0.5))), debe estar depues del
#comando theme_classic()


# Grafico de Dispersion con GGally, que es una extension de ggplot2 -------
install.packages("GGally") 
library(GGally)

ggpairs(Estudiantes_D,
        columns = 1:5,
        title = "Calificaciones de Estudiantes")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5)) # se agrega esta linea para centrar el titulo

data()



  
  
  
  
  
  






