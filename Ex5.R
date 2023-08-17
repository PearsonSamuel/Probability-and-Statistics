set.seed(687)
amostra=rexp(344,0.44)
P=ecdf(amostra)
plot(P)
P(1)

#Valor teorico-0.50341546 (ver F.d. exponencial)
options(digits=6)
abs(P(1)-0.35596358)
