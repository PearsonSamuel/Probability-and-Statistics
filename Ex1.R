install.packages("readxl")
install.packages("ggplot2")

library(ggplot2)
library(readxl)

anos=seq(1960,2019)

Casamentos=read_excel("Casamentos.xlsx", range="B8:AI68")

cLT=Casamentos$`LT - Lituânia`
cDK=Casamentos$`DK - Dinamarca`
cHR=Casamentos$`HR - Croácia`

Divorcios=read_excel("Divorcios.xlsx",range="B8:AI68")

dLT=Divorcios$`LT - Lituânia`
dDK=Divorcios$`DK - Dinamarca`
dHR=Divorcios$`HR - Croácia`

df=data.frame(anos, cLT, cDK, cHR, dLT, dDK, dHR)

dev.off()
ggplot(df, aes(x=anos)) + 
  geom_line(aes(y=cLT, col="Casamentos LT")) + geom_point(aes(y=cLT, col="Casamentos LT")) +
  geom_line(aes(y=dLT, col="Divórcios LT")) + geom_point(aes(y=dLT, col="Divórcios LT")) +
  geom_line(aes(y=cDK, col="Casamentos DK")) + geom_point(aes(y=cDK, col="Casamentos DK")) +
  geom_line(aes(y=dDK, col="Divórcios DK")) + geom_point(aes(y=dDK, col="Divórcios DK")) +
  geom_line(aes(y=cHR, col="Casamentos HR")) + geom_point(aes(y=cHR, col="Casamentos HR")) +
  geom_line(aes(y=dHR, col="Divórcios HR")) + geom_point(aes(y=dHR, col="Divórcios HR")) +
  scale_y_continuous(breaks=seq(0,100000,5000))+
  scale_x_continuous(breaks=seq(1960,2020,10))+
  scale_color_manual("", breaks=c("Casamentos LT","Divórcios LT","Casamentos DK","Divórcios DK","Casamentos HR","Divórcios HR"), 
  values=c("Casamentos LT"="deepskyblue","Divórcios LT"="deepskyblue3","Casamentos DK"="firebrick1","Divórcios DK"="firebrick3","Casamentos HR"="gold","Divórcios HR"="gold3"))+
  labs(x = "Ano", y = "Quantidade p/ ano", title = "Nº anual de Casamentos e Divórcios")




