set.seed(1023)
options(digits=8)
listamedias=replicate(6000,mean(runif(40, min=15,max=19)))
listamedias
mam=mean(listamedias)
mam
valesp=(15+19)/2 #valor esperado
valesp
options(digits=4)
abs(mam-valesp) #val. abs. da diferença pedida c/ 6 casas decimais