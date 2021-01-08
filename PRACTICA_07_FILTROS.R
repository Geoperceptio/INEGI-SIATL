#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")


#Paquete dplyr, util en el filtrado de las bases de datos
library(dplyr)

#Leemos el archivo a analizar
corredoresNY<-read.csv("Maraton_NY.csv", header = TRUE,sep = ",",dec = ".",row.names =1)

#veamos como cargo la informacion
head(corredoresNY)

str(corredoresNY)

#convertir Columna Factor time a numerico

corredoresNY$time<-as.numeric(corredoresNY$time)

head(corredoresNY)

#obteniendo la media , mediana, minimo. maximo y cuartiles de cada variable
summary(corredoresNY)

#Filtrando la base de datos para obtener los mayores a 59 años

tercera_edad<- filter(corredoresNY,age<59)

#Filtrando la base de datos para obtener solamente las mujeres
Mujeres<- filter(corredoresNY,gender=="Female")

#Filtrado la base de datos para obtener mujeres mayores a 59 años
Mujeres_tercera_edad <- filter(corredoresNY,gender=="Female" & age>59)

#Filtrando la columna home y salvar con el objeto "Latinos"

Latinos<- filter(corredoresNY, home %in% c("MEX","BRA","ARG","PER"))

names(Latinos) <- c("Lugar en que llego","Sexo","Edad","Pais","Tiempo")

write.csv(Latinos, "Latinos.csv")

#Cargamos la informacion del archivo Latinos

Latinos<- read.csv(file = "Latinos.csv", header = TRUE,sep=",",dec = ".", row.names =1)

head(Latinos)
str(Latinos)



#Creando un histograma con los tiempos de los corredores Latinos
hist(Latinos$Tiempo)

#Cambiando la cantidad de divisiones del Histograma a 10 series
hist(Latinos$Tiempo,breaks = 10, col = "grey")

#Cambiando las barras a colores y cambiando las etiquetas de los ejes x,y y el Titulo
hist(Latinos$Tiempo,breaks = 10, col=topo.colors(12),
     xlab = "Tiempos en Minutos", ylab = "Frecuencias", main = "Histograma Tiempos Corredores")

#Para cargar el Histograma con ggplot2
library(ggplot2)

ggplot(data=Latinos,mapping= aes(x= Tiempo, fill=factor(Sexo))) + 
  geom_histogram(bins = 10,
                 position = "stack", color="black") +
  labs(title = "Tiempos de Corredores por Genero",
       x="Tiempos registrados de corredores en minutos",
       y="Conteos",
       subtitle = "Carrera por la Salud Tepic, Nayarit 2020",
       caption = "fuente de datos CorredorforeverNay. AC")
  
  #Diagrama de dispersion con graficos basicos
plot(Latinos$Tiempo ~ Latinos$Edad,
     xlab="Edad", ylab = "Tiempo",
     main= "Tiempo vs Edad")
  
  
  
  
  
  
  
  






