#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#leemos el archivo objetivo
Estudiante<-read.csv(file ="estudiantes.csv",header = TRUE,sep = ",",dec = ".", row.names = 1)

#Cantidad de filas del Archivo Estudiante

nrow(Estudiante)

#Cantidad de columnas
ncol(Estudiante)

#NOmbres de los encabezados de la Tabla Estudiante existen varias comandos:

tail(Estudiante)
head(Estudiante)

encabezado<- names(Estudiante)

encabezado

#conocer la estructura de datos del objeto en este caso encabezado

str(encabezado)

#El resultado es una lista de caracter con 5 variables, esta lista se puede convertir a dataframe con niveles
# factor w/ 5 observaciones de un Variable ejemplo:

materias_df<-as.data.frame(encabezado)

str(materias_df)


#Obtener las calificaciones de la materia matematicas extraidas de la tabla
#Forma 1
Matematicas <- Estudiante[ ,1]
#Objeto
Matematicas

#Forma 2
Matematicas2<- Estudiante[ ,"Matematicas"]

#Objeto
Matematicas2


#Forma 3
Matematicas3<- Estudiante$Matematicas

Matematicas3

#Consultar Estructura es una Lista
str(Matematicas)
#Convertir objeto en dataframe o Trible para hacer un Frame
Matematica_df<-as.data.frame(Matematicas)

#Si quisiera saber la califiacion que obtuvo un persona en este caso Ines
ines_mate<-Estudiante[3, 1]
ines_mate


#si quiero saber cuanto sacaron los tres primeros estudiantes en Deportes
Deportes <- Estudiante[1:3 , 5]
Deportes


#nos interesa guardar todas las califiaciones de los cuatro primeros estudiantes

primeros4<-Estudiante[1:4, ]
primeros4

#Si queremos todas las columnas excepto la primera
Sin_Matematicas<- Estudiante[ , -1]

Sin_Matematicas

















