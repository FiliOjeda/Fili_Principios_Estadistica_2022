# Examen
# 25 de mayo del 2022
# Filiberto


madera <- read_csv("Madera.csv")
library(dplyr)

Pino <- madera %>% 
  filter(Sp=="Pino")

Encino <- madera %>% 
  filter(Sp=="Encino")



# Media de Pino y Encino --------------------------------------------------

mean(madera$Peso_gr)

mean(Pino$Peso_gr)

mean(Encino$Peso_gr)


# Sumatoria de pino y encino ----------------------------------------------

sum(Pino$Peso_gr^2)

sum(Encino$Peso_gr)


# Diferencia en gramos ----------------------------------------------------

encino <- mean(Encino$Peso_gr)
pino <- mean(Pino$Peso_gr)

encino - pino

t.test(Encino$Peso_gr,Pino$Peso_gr, var.equal = T)

boxplot(madera$Peso_gr ~ madera$Sp,
        xlab = "Cuadros de madera",
        ylab = "Peso(gr)",
        col = "blue")
