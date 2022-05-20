SEMILLAS <- read.csv("Clases/Clases/BaseDeDatos_estadisticabien.csv", header = TRUE)


graf.sem <- boxplot(SEMILLAS$Peso_gr)
