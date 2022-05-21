# FLO
# 09/03/2022
# Clase



# Media -------------------------------------------------------------------


mean(SEMILLAS$Longitud_mm)
mean(SEMILLAS$Diametro_mm)


# Boxplot -----------------------------------------------------------------



boxplot(SEMILLAS$Longitud_mm)
boxplot(SEMILLAS$Diametro_mm)


# Mediana -----------------------------------------------------------------



median(SEMILLAS$Longitud_mm)
median(SEMILLAS$Diametro_mm)


# Variación ---------------------------------------------------------------



var(SEMILLAS$Longitud_mm)
var(SEMILLAS$Diametro_mm)


# Cinco numeros -----------------------------------------------------------



fivenum(SEMILLAS$Longitud_mm)
fivenum(SEMILLAS$Diametro_mm)


# Sd ----------------------------------------------------------------------



sd(SEMILLAS$Longitud_mm)
sd(SEMILLAS$Diametro_mm)


# Quartiles de la longitud ------------------------------------------------



quantile(SEMILLAS$Longitud_mm, 0.25)
quantile(SEMILLAS$Longitud_mm, 0.50)
quantile(SEMILLAS$Longitud_mm, 0.75)
quantile(SEMILLAS$Longitud_mm, 1)



# Quartiles del Diametro --------------------------------------------------



quantile(SEMILLAS$Diametro_mm, 0.25)
quantile(SEMILLAS$Diametro_mm, 0.50)
quantile(SEMILLAS$Diametro_mm, 0.75)
quantile(SEMILLAS$Diametro_mm, 1)










