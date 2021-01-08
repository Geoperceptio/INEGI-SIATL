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
  
#Pagina web de referencia para colores
http://sape.inf.usi.ch/quick-reference/ggplot2/colour



                          