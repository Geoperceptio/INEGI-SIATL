#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#leemos el archivo objetivo
niveles<-read.csv(file ="Niveles_contaminacion.csv",na.strings = "",header = TRUE,sep = ",",dec = ".")

#Eliminar datos de filas que no tienen información caso de la fila 33
niveles<- niveles[-(33), ]

#verificar tipos de variables con el command str, checar que todos son numericos
str(niveles)
#verificar datos de primeras filas de la tabla
head(niveles)
#Verificar datos de ultimas filas de la tabla
tail(niveles)

#verificando que patrones siguen nuestros datos
install.packages("mice",dependencies = TRUE)
library(mice)
md.pattern(niveles)

#Para saber si una columna contiene NA en este caso consultamos Oxidos de Nitrogeno=NOX
is.na(niveles$NOX)

#Detectando las filas que contienen NA en toda la tabla
complete.cases(niveles)

#para quitar las filas que contienen datos faltante
niveles_sin_NAS <- na.omit(niveles)

#para quedarnos con las filas que si tienen información en una columna con NA ejemplo la de NOX
niveles_sin_NAS_NOX <- niveles[!is.na(niveles$NOX), ]

#si queremos quitar todas las columnas que tienen muchos valores perdidos
niveles_sin_NOX_ni_CN <- niveles[ , -c(6,9)]

#Remplazando ceros por NAS en la Fila con el dato de Numero de empresa que tiene un valor de cero
niveles$Numero_de_empresas[niveles$Numero_de_empresas== 0] <- NA

#quitando los valores duplicados en la tabla
sin_duplicados <- unique(niveles)

#verificando si existen dupiclados en la tabla
duplicated(sin_duplicados)

#Calculando Minimos, Maximos, Media, desviacion Estandar, cuando se tiene NAs
summary(niveles, na.rm=TRUE)




