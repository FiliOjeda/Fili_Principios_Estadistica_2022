#Filiberto Lozoya Ojdea
#11/02/2022
#Laboratorio semana 3


# Parte 1: Importar datos -------------------------------------------------

getwd()
setwd("C:/Users/Junio/OneDrive/Documentos/Filiberto_RStudio_Principios_de_Estadistica_2022/Fili_Principios_Estadistica_2022")
trees <- read.csv("DBH_1.csv", header=TRUE)
head(trees)


# Ingresar datos directo en la consola ------------------------------------

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)



# Datos de URL no seguras (http) -----------------------------------------
prof.url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionvsrm.csv"
profepa <- read.csv(prof.url)
head(profepa)
prof.url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                        "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof.url_2)
head(profepa2)


# Datos de URL seguras (https): Dropbox y Github --------------------------

library(repmis) 
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto) 


library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)


# Parte 2: Operaciones con la base de datos -------------------------------

mean(trees$dbh)
sd(trees$dbh)
sum(trees$dbh < 10)
which(trees$dbh < 10)
trees.13 <- trees[!(trees$parcela=="2"),]
trees.13
trees.1 <- subset(trees, dbh <= 10)
head(trees.1)
mean(trees$dbh)
mean(trees.1$dbh)


# Parte 3 Representación gráfica ------------------------------------------

# HISTOGRAMAS
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamifero$total_sleep)

hist(mamifero$total_sleep, xlim = c(0,20), ylim = c(0,14), 
     main = "Total de horas sueño de las 39 especies",
     xlab = "Horas sueño", ylab = "Frecuencia", las = 1, col = "#996600")


#DATOS

     hist(mamifero$total_sleep, # Datos
     
     xlim = c(0,20), ylim = c(0,14), # Cambiar los límites de x & y
     
     main = "Total de horas sueño de las 39 especies", # Cambiar el título
     
     xlab = "Horas sueño", # Cambiar eje de las x
     
     ylab = "Frecuencia", # Cambiar eje de las y
     
     las = 1, # Cambiar orientación de y
     
     col = "#996600") # Cambiar color de las barras
     


     
#BARPLOTS O GRAFICO DE BARRAS
     data("chickwts")
     head(chickwts[c(1:2,42:43, 62:64), ])
     
     feeds <- table(chickwts$feed)
     feeds
     
     barplot(feeds)
     
     barplot(feeds[order(feeds, decreasing = FALSE)]) 
     
     
#PERSONALIZAR MI HISTOGRAMA
     
barplot(sort(feeds), horiz = TRUE, 
        main = "Frecuencia de alimentacion", 
         las = 1, xlab = "Números de pollos",
        col = c("#FFA000", "#FFB300", "#FFC107", "#FFCA28", "#FFD54F", "#FFE082"))


