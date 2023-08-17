install.packages("readxl")
library(readxl)
pacientes <- read_excel("Pacientes.xlsx")
pacientes
plot(pacientes$TAD,pacientes$Idade,
     main="Dispersão entre TAD e Idade",
     xlim=c(57,112), 
     ylim = c(40,70),
     xlab="Tensão Arterial Diastólica",
     ylab="Idade",
     pch=19, col="blue",
     grid())
