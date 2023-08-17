install.packages("readxl")
install.packages("ggplot2")
library("readxl")
library(ggplot2)

dados=read_excel("ConsumoFamilias.xlsx")
df=data.frame(ano_pais=c("1995-NO","2019-NO","1995-CY","2019-CY","1995-NL","2019-NL"),
              z=as.numeric(c(dados$...33[6],dados$...33[30],dados$...9[6],dados$...9[30],dados$...26[6],dados$...26[30])))

ggplot(df, aes(ano_pais,z,fill=ano_pais))+theme(legend.position="none")+
  geom_col() + 
  xlab("Ano+País") +
  ylab("Consumo Final") +
  scale_fill_manual("",values=c("1995-NO" = "deepskyblue","2019-NO"="deepskyblue",
                                "1995-CY"="firebrick1","2019-CY"="firebrick1",
                                "1995-NL"="green1","2019-NL"="green1"))+
  scale_y_continuous(breaks=seq(0,400000,50000))
