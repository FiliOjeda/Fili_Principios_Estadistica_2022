# Clases
# clase 04/05/2022
# FLO

Semillas <- read.csv("Clases/Clases/BaseDeDatos_estadisticabien.csv", header = T)


# Plot de diametro y peso en gramos ---------------------------------------

plot(Semillas$Diametro_mm, Semillas$Peso_gr,
     pch = 20,
     col = "darkblue",
     xlab="diametro de semillas",
     ylab="peso de semillas")


# lm funcion que me ayuda a determinar alfa y beta de la regracion


sem.lm <- lm(Semillas$Diametro_mm ~ Semillas$Peso_gr)

summary(sem.lm)

abline(sem.lm,
       col = "lightblue")


text(19, 2, "Y=-4.934+ 0.532x")

text(19, 1.5, "Regresion lineal")



