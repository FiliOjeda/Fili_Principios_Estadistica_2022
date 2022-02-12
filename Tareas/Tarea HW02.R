# Fliliberto Lozoya Ojeda
# 11/02/2022
# Tarea2 

# Los datos de trabajo provienen del libro Introductory probability & statistics, applications for forestry
#& natural sciences de Kozak et al. (2008). El Cuadro 1 muestra un ejemplo de datos coletados de
#50 árboles con siete variables. (i) Árbol se refiere al número de árbol, (ii) Fecha: mes decolecta en
#Marzo 2006; (iii) Especies: C: Cedro Rojo (Western red cedar); F: Douglasia verde (Douglas fir);
#H: Tsuga heterófila (western hemlock); (iv) Posición: clasificación de la copa: D: Dominante, C:
#codominate, I: Intermedio, S: suprimido; (v) Vecinos: número de vecinos en un radio de 5m; (vi)
#Diámetro: diámetro a la altura de pecho (1.3m); (vii) Altura total.

conjunto <- read.csv("Clases/Clases/datos.csv", header = TRUE)


# Aplicar la función subset para la variable Altura de acuerdo a l --------


# Incluir los datos iguales o menores a la media (objeto en R se llame: H.media)


H.Media <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))

mean(conjunto$Altura)


# Incluir los datos menores a 16.5 m (objeto en R se llame: H.16)

H.16 <- subset(conjunto, conjunto$Altura <= 16.5)




# Aplicar la función subset para la variable Vecinos ----------------------


# Incluir los árboles que tengan un número de vecinos iguales o menores a 3 (Objeto en R:
                                                                               #Vecinos-3)
Vecinos3 <- subset(conjunto, conjunto$Vecinos <= 3)



# Incluir los árboles que tengan un número de vecinos mayores a 4 (Objeto en R: ‘Vecinos-4)

Vecinos4 <- subset(conjunto, conjunto$Vecinos >= 4)



# Aplicar la función subset para la variable Diametro ---------------------


# Incluir los diámetros menores a la media (objeto en R: DBH-media)

DBHmedia <- subset(conjunto, conjunto$Diÿmetro <= mean(conjunto$Diÿmetro))

mean(conjunto$Diÿmetro)


# Incluir los diámetros mayores a 16 (Objeto en R DBH-16)

BDH16 <- subset(conjunto, conjunto$Diÿmetro >= 16)



# Aplicar la función subset para la variable Especie ----------------------

#  Incluir la especie Cedro Rojo

Cedro <- subset(conjunto, conjunto$Especie == "C")

# Incluir la especie Tsuga heterófila y Douglasia verde

EspeciesH <- subset(conjunto, conjunto$Especie == "H")


EspeciesF <- subset(conjunto, conjunto$Especie == "F")


# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diámetro--------

Observaciones16 <- subset(conjunto, conjunto$Diÿmetro <= 16.9 )



# Determinar cuantas observaciones son mayores a 18.5 metros de Altura --------

Obs.alt <- subset(conjunto, conjunto$Altura >= 18.5)



# Visualización de datos -------------------------------------------------

#Con la función hist generar los histogramas para los objetos creados en el apartado anterior
  

# Altura, H.media y H.16 --------------------------------------------------


# HISTOGRAMA DE LA ALTURA

hist(conjunto$Altura, ylim = c(0, 16), main = "Altura de los arboles",
     xlab = "Altura", ylab = "Frecuencia", las = 1, col = "#996600")
  

# HISTOGRAMA DE LA H.MEDIA

hist(H.Media$Altura, ylim = c(0, 10), main = "Altura media de los arboles",
     xlab = "media de los arboles", ylab = "Frecuencia", las = 1, col = "dark green")

# HISTOGRAMA DE H.16

hist(H.16$Altura, xlim = c(6, 18), ylim = c(0, 12), main = "Altura de arboles de 16.5 o menos",
     xlab = "medida de los arboles", ylab = "Frecuencia de los arboles", las = 1, col = "orange")



# Vecinos, Vecinos-3, Vecinos-4 -------------------------------------------


# HISTOGRAMA DE VECINOS

hist(conjunto$Vecinos, ylim = c(0, 14), main = "Vecinos de los arboles",
     xlab = "Numero de vecinos", ylab = "Frecuencia", las = 1, col = "yellow")


# HISTOGRAMA DE VECINOS DE 3 O MENOR

hist(Vecinos3$Vecinos, xlim = c(0, 4), ylim = c(0, 15), main = "Vecinos menores de 3",
     xlab = "Vecinos de arboles", ylab = "Frecuencias", las = 1, col = "purple")

# HISTOGRAMA DE VECINOS DE 4 O MAYOR

hist(Vecinos4$Vecinos, xlim = c(3, 7), ylim = c(0, 14), main = "Vecinos mayores de 4",
     xlab = "Vecinos de arboles", ylab = "Frecuencias", las = 1, col = "pink")



# Diametro, DBH-media, DBH-16 ---------------------------------------------


# HISTOGRAMA DEL DIAMETRO

hist(conjunto$Diÿmetro, xlim = c(5, 25), ylim = c(0, 15), main = "Diametro de los arboles",
     xlab = "numero de arboles", ylab = "Frecuencias", las = 1, col = "dark blue")


# HISTOGRAMA DE LA DBH-MEDIA

hist(DBHmedia$Diÿmetro, xlim = c(6, 16), ylim = c(0, 10), main = "DBH-Media",
     xlab = "DBH", ylab = "Frecuencia", las = 1, col = "red")


#HISTOGRAMA DE DBH 16 O MAYOR

hist(BDH16$Diÿmetro, xlim = c(15, 24), ylim = c(0, 10), main = "DBH 16 o mayor",
     xlab = "DBH-16", ylab = "Frecuencia", las = 1, col = "brown")



# Estadísticas básicas ----------------------------------------------------

#Determinar la media (mean) de los objetos (variable y respectivos subsets), así como su desviación
#estándar (sd).


# Altura, H.media y H.16 -------------------------------------------------

#MEDIA DE ALTURA

mean(conjunto$Altura)


#MEDIA DE H.MEDIA

mean(H.Media$Altura)


#MEDIA DE H.16

mean(H.16$Altura)



# Vecinos, Vecinos-3, Vecinos-4 -------------------------------------------


# MEDIA DE VECINOS

mean(conjunto$Vecinos)


#MEDIA DE VECINOS-3

mean(Vecinos3$Vecinos)


#MEDIA DE VECINOS-4

mean(Vecinos4$Altura)



# Diametro, DBH-media, DBH-16 ---------------------------------------------

#MEDIA DEL DIAMETRO

mean(conjunto$Diÿmetro)


#MEDIA DE DBH-MEDIA

mean(DBHmedia$Diÿmetro)


#MEDIA DE DBH-16

mean(BDH16$Diÿmetro)



# LINEAS DE COMANDO R -----------------------------------------------------

#Los datos pueden descargarse del servidor de dropbox utilizando la paquetería repmis utilizando el
#siguiente código

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

head(conjunto)

conjunto <- read.csv("datos.csv", header=TRUE)



