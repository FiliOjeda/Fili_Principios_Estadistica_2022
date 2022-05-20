<<<<<<< HEAD
# Filiberto Lozoya Ojeda
03/02/22
Clases
# Sesion Semana 3 Sala de Computo
=======

# Filiberto Lozoya Ojeda
03/02/22
Clases
# Sesion Semana 3 sala de computo
>>>>>>> d8e3495a184ddc0051ef3890b1ea66c859bd472e


# Muestra basica de R -----------------------------------------------------

# Operaciones basicas en R.
2 + 2
8 / 4
9 + 5 +8 + 4

 # Agregar un objeto

resultado <- 9 + 5 + 8 + 4

resultado + resultado

altura <- c(1.67, 1.52, 1.62, 1.73, 1.58, 1.60, 1.52, 1.70, 1.74, 1.74)

altura

 # Dividir cada altura entre 2


res.alt <- altura / 2
res.alt

# Primera base de datos ---------------------------------------------------

Ba <-c(1:5)
h <- c(12, 13.1, 14.8, 16.3, 15.3)
DAP <- c(20, 21.2, 22.1, 24.7, 22.7)
DC <- c(9, 8.5, 7.6, 9.3, 9.2)
t <- c(15, 16, 15, 18, 17)
Sp <- c("Pino", "Pino", "Pino", "Encino", "Encino")

tabla <- data.frame(Ba, h, DAP, DC, t, Sp)

mean(inventario$h)
mean(inventario$DAP)
mean(inventario$Ba)
mean(inventario$DC)
mean(inventario$t)

# Agregar columna en inventario (DxH)

inventario$dxh <- inventario$h * inventario$DAP


# Graficas ----------------------------------------------------------------

