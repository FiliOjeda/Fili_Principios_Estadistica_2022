# Clase 27/04/2022
# FLO
# Ejercicio de coorelación


# Revisar mediante una grafica si existe una asociacion entre el diametro
# de la semilla y la longitud

plot(semillas$Longitud_mm, semillas$Diametro_mm)

plot(semillas$Diametro_mm, semillas$Peso_gr)

cor.test(semillas$Diametro_mm, semillas$Peso_gr)

cor.test(semillas$Diametro_mm, semillas$Longitud_mm)

x <- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

x1 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y1 <- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

x2 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y2 <- c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

x3 <- c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y3 <- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.5, 5.58, 7.91, 6.8)

cor.test(x, y)

cor.test(x1, y1)

cor.test(x2, y2)

cor.test(x3, y3)


op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))

plot(anscombe$x1, anscombe$y1, pch = 20)

plot(anscombe$x2, anscombe$y2, pch = 20)

plot(anscombe$x3, anscombe$y3, pch = 20)

plot(anscombe$x4, anscombe$y4, pch = 20)

par(op)

