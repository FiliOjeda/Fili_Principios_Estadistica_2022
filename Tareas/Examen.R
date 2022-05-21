# Filiberto Lozoya Ojeda
# Examen
# 24 de marzo del 2022


# Problema 1 --------------------------------------------------------------

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95, 
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)

sd(costal)

t.test(costal, mu=80)

# ¿Cual es el valor de p?
#  = 0.02264
# ¿Cuale es la media de los costales que compro el ganadero? 
  mean(costal)
# = 78.91068

# ¿Cuál hipótiesis se acepta?
#  Se acepta la H1 <- Hipótesis alternativa
  
# ¿Cuantos grados de libertad tiene el experimento?
 # df = 43
  
# ¿Exsiste evidencia de que el valor medio promedio de los costales observados es
# menor (significativamente) a los que anuncia el producto?
# =si porque la media marca que los costales en promedio tienen un peso de 78.91068
#  en lugar de 80 como lo marca el provedor
  

# Problema 2 --------------------------------------------------------------

  azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 
              22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 
              24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0, 
              22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
  
t.test(azufre, mu=17.5)
  
  
# ¿Cual es el valor de p?
#  = 0.1893

# ¿Cuales son los intervalos de confianza al 95%?
#  = 16.87912 y 20.53588
  
# ¿Cuantos grados de libertad tiene el experimento?
 # df = 39

# ¿Cual es la hipótesis aceptada?
#  Se acepta la H0 <- Hipótesis nula

# ¿Exsiste evidencia de que el valor promedio de las emisiones observadas es mayor 
# (significativamente) a la declarada en los procedimientos de seguridad de la empresa?
  
  # = Si, ya que por año emite 18.7075 Toneladas de óxido de azufre y es mayor
  # a las 17.5 que esta establecido

  

# Problema 3 --------------------------------------------------------------

temperatura <- read.csv("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")

temp <- c(temperatura$temp_media)

mean(temperatura$temp_media)

t.test(temp, mu=24)

# ¿Cual es el valor de p?
 # = 0.03615

# ¿Cuantos grados de libertad tiene el experimento?

# df = 845
  
# ¿Cual es la hipótesis aceptada?
  # Se acepta la H1 <- Hipótesis alternativa

# ¿Existe evidencia de que el valor medio promedio de la temperatura observada es mayor
# (significativamente) a la declarada?

# No, ya que la media se mantiene en 23.62908, por lo que es menor a los 24 
# que estan establecidos




# Problema 4 --------------------------------------------------------------

Grupo <- gl(2, 12, labels = c("Fotografia", "Araña"))

Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55, 65, 
              55, 50, 35, 30, 50 ,60, 39)
Datos <- data.frame(Grupo, Ansiedad)
head(Datos)

library(dplyr)
Araña <- Datos %>%
  filter(Grupo=="Araña")
Fotofrafia <- Datos %>%
  filter(Grupo=="Fotografia")

mean(Fotofrafia$Ansiedad) 
mean(Araña$Ansiedad)

boxplot(Datos$Ansiedad ~ Datos$Grupo, col = "darkred")


shapiro.test(Fotofrafia$Ansiedad)
shapiro.test(Araña$Ansiedad)


t.test(Fotofrafia$Ansiedad, Araña$Ansiedad, var.equal=T)













