 # FLO
 # 10/02/2022
 #Semana 4 dia 2
 # Descargar datos de inernet 

url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfo.csv"



profepa <- read.csv(url)

summary(profepa)

profepa$Inspeccion >= mean(profepa$Inspeccion)

 #SUBSET

ins.alta <- subset(profepa, profepa$Inspeccion >= mean(profepa$Inspeccion))

ins.baja <- subset(profepa, profepa$Inspeccion <= mean(profepa$Inspeccion))

Est.c <- subset(profepa, profepa$Entidad == "Chiapas")


Est.C <- profepa[4:8,]

Est.N <- profepa[17:18,]

ins.media <- subset(profepa, profepa$Inspeccion >= 15 & profepa$Inspeccion <= 35)

ins.media2 <- subset(profepa, profepa$Inspeccion >= 15 & profepa$Operativo >= 10)


ins.media3 <- subset(profepa, profepa$Recorrido <= mean(profepa$Recorrido) & profepa$Operativo <= mean(profepa$Operativo))


mean(profepa$Operativo)
mean(profepa$Recorrido)


 #==
 #!=
 #<=
 #>=
 