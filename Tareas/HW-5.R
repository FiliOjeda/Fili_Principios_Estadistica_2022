# Clase
# 28/04/2022
# Filiberto


# PRIMER PROBLEMA ---------------------------------------------------------


Speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
Abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

plot(Speed, Abundance, xlab = "variable independiente", ylab = "variable independiente")

cor.test(Speed, Abundance)

# valor de r = 0.8441408
# valor de p = 0.008393
# Hipotesis aceptada = hipotesis alternativa 
# Grados de libertad = 6
# Valor de t = 3.8568
# 95 percent confidence interval:
# 0.3442317 0.9711386

# H0 <- No existe una correlación entre la velocidad del arroyo y la abundancia de
# efímeras.

# H1 <- Existe una correlación positiva entre la velocidad de los arroyos y la abundancia
# de efímeras (Ecdyonurus dispar)

# ¿Es estadísticamente significativa la correlación?
  # Si  
  

# SEGUNDO PROBLEMA --------------------------------------------------------

Suelo <- read.csv("suelo.csv") 

cor.test(Suelo$pH, Suelo$N)
# valor de p = 1.149e-06
# valor de r = 0.636654

cor.test(Suelo$pH, Suelo$Dens)
# valor de p = 1.062e-05
# valor de r = -0.5890264

cor.test(Suelo$pH, Suelo$P)
# valor de p = 9.74e-06
# valor de r = 0.5910303

cor.test(Suelo$pH, Suelo$Ca)
# valor de p = 3.614e-12
# valor de r = 0.8086293

cor.test(Suelo$pH, Suelo$Mg)
# valor de p = 0.005361
# valor de r = -0.3957821

cor.test(Suelo$pH, Suelo$K)
# valor de p = 1.585e-05
# valor de r = 0.5795727

cor.test(Suelo$pH, Suelo$Na)
# valor de p = 4.724e-08
# valor de r = -0.6932614

cor.test(Suelo$pH, Suelo$Conduc)
# valor de p = 2.484e-10
# valor de r = -0.7648104

  
  