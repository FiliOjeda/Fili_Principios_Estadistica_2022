# Filiberto Lozoya Ojeda
# 09/02/2022 



# importar datos ----------------------------------------------------------

vivero <- read.csv("Clases/BD_Viveros.csv", header = TRUE)


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
