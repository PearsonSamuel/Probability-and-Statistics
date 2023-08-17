set.seed(357)
library(ggplot2)
slambda=4*13
df=data.frame(dados=rpois(100,slambda))
ggplot(df) + stat_ecdf(aes(dados, col="F.D.Empírica"))+
stat_function(fun=ppois, args=list(slambda), geom="step", aes(col="F.D.Exata")) +
stat_function(fun=pnorm, args=list(slambda,sqrt(slambda)), aes(col="F.D. aproximada pela Distribuição Normal"))+
labs(title="Funções de Distribuição", x="x", y="F.D.-S13")+
scale_color_manual("",breaks=c("F.D.Empírica","F.D.Exata","F.D. aproximada pela Distribuição Normal"),
values = c("F.D.Empírica"="green","F.D.Exata"="deeppink",
"F.D. aproximada pela Distribuição Normal"="gold"))+
scale_x_continuous(breaks=seq(10,80,5))
