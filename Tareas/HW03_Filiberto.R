# FLO 
# 18/02/2022
# HW 03: Medidas de tendencia central


# Problemas


# Problema 1 --------------------------------------------------------------

# Sumatoria de de "X" y "y"

Xs <- c(6, 4, 1, 3)
Ys <- c(1, 3, 4, 2)

sum(Xs)


sum(Ys)



# Producto de "X" y "y"

prod(Xs)


prod(Ys)



# Sumatoria de ambos

sum(Xs, Ys)


# Producto de ambos

prod(Xs, Ys)


# producto de ambos con exponentes

prod(Xs^2, Ys^0.5)



# Problema 2 --------------------------------------------------------------

GrupoA <- c(80, 90, 90, 100)

GrupoB <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)


#a) Creo que la media es mas alta en el grupo A ya que son pocos números
# y son números altos y en el grupo B son mas números y son números bajos


#b) Media de cada grupo

mean(GrupoA)

mean(GrupoB)

# la media del grupo a es mayor a la del grupo "B" y si coincidía 
# con la respuesta que había comentado en el inciso "A"




# Problema 3 --------------------------------------------------------------

prom80 <- c(87, 72, 85, 76)

mean(prom80)

# Necesita sacar un 76 en su ultimo examen para pasar con 80




# Problema 4 --------------------------------------------------------------

prom2 <- 110/50

prom2

# El enunciado verdadero es el inciso "B" que dice: Hay un total 
# de 110 niños en la ciudad



# Problema 5 --------------------------------------------------------------

Germinaciones <- c(5, 6, 7, 8, 9)

cajas.petri <- c(1, 3, 5, 3, 1)

# A) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?

barplot(cajas.petri,
        main = "Germinaciones",
        horiz = T,
        names.arg = c(5, 6, 7, 8, 9),
        xlab = "Cajas", 
        ylab = "Germinacion",
        col = rainbow(5))

# R= Un gráfico de barras


#B) ¿Cuál es la media?

mean(Germinaciones)

mean(cajas.petri)


#C)¿Cuál es la mediana?

median(Germinaciones)

median(cajas.petri)


# Problema 6 --------------------------------------------------------------

set <- c(2, 2, 3, 6, 10)

# a) Calcule la moda, mediana y la media

mode <- function(set)
{return(as.numeric(names(which.max(table(set)))))}
 mode(set) 
  

median(set)


mean(set)


# B) Suma le 5 a cada numero de set y calcula la moda, mediana y media

setb <- c(2+5, 2+5, 3+5, 6+5, 10+5)

setb


mode(setb)


median(setb)


mean(setb)


#C) Compare los resultados de las partes (a) y (B). En general, ¿cómo crees que la moda, la mediana y la media se ven afectadas cuando se agrega la misma constante a cada valor de datos en un conjunto?

# R= Todos los resultados se vieron afectados por el aumento de los números



#d) Multiplique cada valor por 5. Calcule la moda, la mediana y la media.

setd <- c(2*5, 2*5, 3*5, 6*5, 10*5)

setd


mode(setd)


median(setd)


mean(setd)


#E) Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda,La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto se multiplica por la misma constante?

# R= Todos los resultados se vieron afectados por el aumento de los números



# Problema 7 --------------------------------------------------------------

# Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

# a) Enumere cinco dígitos que tengan una mediana de 7 y una media de 7

conjunto1 <- c(6, 7, 7, 7, 8)

median(conjunto1)


mean(conjunto1)


# Encontrar un conjunto diferente de 5 dígitos que también funcionen.

conjunto2 <- c(4, 6, 7, 9, 9)

median(conjunto2)


mean(conjunto2)



#B) Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 

conjunto3 <- c(1, 3, 7, 7, 9)

median(conjunto3)


mean(conjunto3)

# Encuentra un conjunto diferente de 5 dígitos que funcione.

conjunto4 <- c(8, 8, 7, 4, 5)


median(conjunto4)


mean(conjunto4)


# Trabajo Completo
