#Indicamos el directorio de trabajo donde se encuentra el archivo csv

setwd("F:/ESTUDIO_ONLINE_R/CURSO_RMARKDOWN/PRACTICAS")

#Leemos la informacion del archivo

Exportaciones<-read.csv("Exporta_Mex_2018.csv", header = TRUE,sep = ",",dec = ".")

#instalar paquete y libreria
install.packages("treemap",dependencies = TRUE)
library(treemap)


# Graficos Basicos con R --------------------------------------------------

rectangulos<- treemap(Exportaciones,
                     index = c("Pais","Sector"),
                     vSize = "Gross_Export",
                     type = "index",
                     title = "Exportaciones México 2018")


# Grafico con ggplot2 -----------------------------------------------------
library(ggplot2)
install.packages("treemapify",dependencies = TRUE)
library(treemapify)

ggplot(Exportaciones, aes(area = Gross_Export, fill= Pais, subgroup=Pais, subgroup2=Sector)) +
  geom_treemap() +
  geom_treemap_subgroup2_border(colour="white", size=2)+
  geom_treemap_subgroup_text(place = "center",fontface="italic", colour="gray27") +
  geom_treemap_subgroup2_text(colour="gray")+
  scale_fill_manual(values = c("steelblue4","mediumpurple4","purple","slateblue"))+
  labs(title="Principales Exportaciones México 2018")
  
                          