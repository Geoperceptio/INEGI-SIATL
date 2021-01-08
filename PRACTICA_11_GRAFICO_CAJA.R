#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")



#Leemos el archivo a analizar
Latinos<-read.csv("Latinos.csv", header = TRUE,sep = ",",dec = ".",row.names = 1)


#Revisamos la carga de la informacion
head(Latinos)

#Diagrama de caja y bigotes para la variable Tiempo
boxplot(Latinos$Tiempo, xlab="Tiempo de Corredor", col="grey")

#Obtenemos el resumen de los datos del objeto "Latinos"

summary(Latinos)

#Diagrama de caja y bigotes para la variable Edad

boxplot(Latinos$Edad, xlab="Edad", col = "orange")

#Tiempos por nacionalidad de los latinos
boxplot(Latinos$Tiempo ~ Latinos$Pais, xlab = "Tiempos por Nacionalidad", ylab = "Tiempo en minutos", col=c("red","blue","green","grey"))

#Library (ggplot2)
library(ggplot2)
ggplot(Latinos,aes(x=factor(0), y=Tiempo))+
   geom_boxplot(fill="orange")+
   labs(title = "Diagrama de caja y Bigotes", x="Tiempo", y="")+
   theme_classic() +
   theme(plot.title = element_text(hjust = 0.5))

# Variable Edad -----------------------------------------------------------


ggplot(Latinos,aes(x=factor(0), y=Edad))+
   geom_boxplot(fill="green")+
   labs(title = "Diagrama de caja y Bigotes", x="Edad", y="")+
   theme_classic() +
   theme(plot.title = element_text(hjust = 0.5))


# Tiempos por Nacional de los Latinos -------------------------------------

ggplot(Latinos,aes(x=Pais, y=Tiempo))+
   geom_boxplot(aes(fill=Pais))+
   labs(title = "Diagrama de caja y Bigotes", x="Pais", y="Tiempo")+
   theme_classic() +
   theme(plot.title = element_text(hjust = 0.5))





        