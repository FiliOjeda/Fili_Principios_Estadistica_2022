# Filiberto Lozoya Ojeda
# 09/02/2022 
#sesion semana 4 sala de computo


# importar datos ----------------------------------------------------------

BD_Viveros <- read.csv("Viveros.csv")

# Estadistica Descriptiva -------------------------------------------------

 # Medidas de Tendencia Central

mean(BD_Viveros$IE)

median(BD_Viveros$IE)

range(BD_Viveros$IE)

fivenum(BD_Viveros$IE)



boxplot(BD_Viveros$IE)

boxplot(BD_Viveros$IE, horizontal = T)

boxplot(BD_Viveros$IE, horizontal = T, col = "orange")


hist(BD_Viveros$IE, ylim = c(0, 12))

table(BD_Viveros$IE)

ftable(BD_Viveros$IE)

frec <- table(BD_Viveros$IE)
