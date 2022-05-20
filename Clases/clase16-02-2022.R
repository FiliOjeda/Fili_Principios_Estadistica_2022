# FLO
# Semana 5
# 10/02/2022

url <- paste0("https://raw.githubusercontent.com/mgtagle/",
              "PrincipiosEstadistica2021/main/cuadro1.csv")


inventario <- read.csv(url)
summary(inventario)

inventario$Especie <- as.factor(inventario$Especie)

inventario$Posicion <- as.factor(inventario$Posicion)


# Obtener una tabla de frecuencia para las variables especie y posición --------


freq.sp <- table(inventario$Especie)

freq.sp/sum(freq.sp)*100



freq.ps <- table(inventario$Posicion)

por.pos <- freq.ps/sum(freq.ps)*100

barplot(freq.ps, col ="red", las = 1)

barplot(freq.sp, las=1, col = "lightblue", border = NA)



pie(freq.ps, col = topo.colors(4))
pie(freq.sp, col = topo.colors(3), labels = paste(levels(inventario$Especie), freq.sp, "ind"))


pie(freq.ps, col = topo.colors(4), labels = paste(levels(inventario$Posicion), por.pos, "%"))





