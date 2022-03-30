# FLO
# Clase
# 30 de marzo del 2022

Datos <- read.csv("Clases/Clases/mainproduccion.csv")
Datos$Tiempo <- as.factor(Datos$Tiempo)

boxplot(Datos$Kgsem ~ Datos$Tiempo, col = "blue",
        xlab = "Tiempo",
        ylab = "semillas(Kg)")

t.test(Datos$Kgsem ~ Datos$Tiempo, paired =TRUE)

boxplot(Datos$BioRama, Datos$Tiempo, col = "pink",
        xlab = "Tiempo",
        ylab = "Biomasa")


t.test(Datos$BioRama ~ Datos$Tiempo, paired =TRUE)



boxplot(Datos$Germ, Datos$Tiempo, col = "purple",
        xlab = "Tiempo",
        ylab = "Germinacion(%)")

t.test(Datos$Germ ~ Datos$Tiempo, paired =TRUE)
