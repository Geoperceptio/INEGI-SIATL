#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#Graficaremos cuantos de los corredores son mujeres y cuantos son hombres de cada pais

corredores_pais<-read.csv("corredores_por_pais.csv", header = TRUE,sep = ",",dec = ".",row.names = 1)




# Formamos las Etiquetas a colocar en el Grafico circular --------------------------------------------------

etiquetas <- paste(corredores_pais$Pais,corredores_pais$total_por_Pais)

etiquetas


# Graficos Basicos con R --------------------------------------------------

pie(corredores_pais$total_por_Pais,col = rainbow(12), labels = etiquetas,
    main = "Corredores Latinos Por Pais")


# Grafico con ggplot2 -----------------------------------------------------

library(ggplot2)


ggplot(corredores_pais,aes(x="",y=total_por_Pais,fill=Pais))+
  geom_bar(stat = "identity",color="black")+
  coord_polar("y",start = 0) +
  geom_text(aes(label=total_por_Pais),position = position_stack(vjust = 0.5),
            color="black")+ 
            labs(title = "Corredores por Pais")+theme_void()
            
            