# Tarea HW-01
# Filiberto Lozoya Ojeda
02/02/2022


# Problemas ---------------------------------------------------------------

# Problema 1:Un investigador realiza un inventario de la superficie reforestada por especie en la región centromediante los reporte emitidos por CONAFOR. El investigador encuentra que la superficie reforestadacon diferentes especies son las siguientes: la especiePinuscon 3140 has,Mezquitecon 1453 has,Encinoscon 450 has,Tekacon 1200 has,Juiperoscon 720 has.
#Toma los objetos creados del inventario (i.e variables)Pinus,Mexquite,Encinos,TekayJuniperosy escribamos dentro de la función de combinación c() para crear un vector llamado superficie:
superficie <- c()
superficie <- c("Pinus, Mezquite, Encinos, Teka, Juniperos")

#Ahora, use la función gráfica barplot() para producir un diagrama de barras de la superficiepor especie:

Num <- c(1:5)
SUperficie <- c("Pinus", "Mezquite", "Encinos", "Teka", "Juniperos")
has <- c(3140, 1453, 450, 1200, 720)

grafica <- data.frame(Num,SUperficie, has)

#Problema 2

#Un técnico examina 30 cajas de Petri en las que se colocaron para germinar seis semillas y despuésde cierto tiempo cuenta el número de semillas germinadas en cada una de ellas. Los valores de las 30observaciones son los siguientes:
xi <- ("4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2")

germinacion <- data.frame(xi)

mean(germinacion$xi)

#Problema 3
#Un viverista mide la altura alcanzada por 25 plantas deProsopisde un año de edad, obteniendo lossiguientes valores:

xp <- ("38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12,20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26")

prosopis <- data.frame(xp)

mean(prosopis$xp)

