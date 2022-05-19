# Examen
# 11/05/2022
# FLO

Erupciones <- read.csv("erupciones.csv")

Erupciones.lm <- lm(Erupciones$eruptions ~ Erupciones$waiting)

plot(Erupciones$waiting, Erupciones$eruptions,
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duracion de las erupciones (min)",
     pch=19,
     col="red",
     main = "Geyser Old Falthfull")

abline(Erupciones.lm,
       col= "orange")
text(80, 2.5, "Y´=-1.874016 +  0.075628*x")
text(75, 2, "r^2=0.81*")


cor.test(Erupciones$eruptions, Erupciones$waiting)



# Primer Problema ---------------------------------------------------------

# MEDIA
mean(Erupciones$eruptions)
mean(Erupciones$waiting)

# DESVIACIÓN ESTANDAR
sd(Erupciones$eruptions)
sd(Erupciones$waiting)

# VARIANZA
var(Erupciones$eruptions)
var(Erupciones$waiting)


cor.test(Erupciones$waiting, Erupciones$eruptions)




summary(Erupciones.lm)



#H0 <- no existe una alteracion en las erupcipnes
#H1 <- si exsiste una alteracion en las erupciones

# ¿Cual es el coeficiente de la coorelacion?
# 0.9008112


  
# ¿Es significativa la coorelacion?
# Si



# ¿Cual es el valor del intercepto?
# -1.87402


# ¿Cual es el valor de la pendiente?
# 0.07563


# realizar un analisis de regresión

Erupciones.lm <- lm(Erupciones$eruptions ~ Erupciones$waiting)

summary(Erupciones.lm)



# Son significativas las regresiones: intercepto y la pendiente
#Si


# Es significativa la regresion 
# si


# ¿Cual seria la duracion en minutos de la proxima erupcion, 
# si los tiempos de espera son los dados en el siguiente cuadro?

Erupciones$yprimas <- round(-1.874016+ 0.075628* Erupciones$eruptions, 2)

# Estimar el valor de y la prima para los valores de x dados, aplicando la 
# formula de la regresion

datos <- c(80, 40, 45, 53, 61)
-1.874016+ 0.075628* datos
