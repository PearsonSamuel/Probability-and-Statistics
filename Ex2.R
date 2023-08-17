install.packages("readxl")
library("readxl")
HFC=read_excel("HFC.xlsx")$`idade, anemia,creatina fosfoquinase, diabetes, fração de ejeção, hipertensão arterial, plaquetas,  creatinina sérica, sódio, sexo, fumador, tempo, morte`
h=vector("list" , length=length(HFC))
for (x in 1:length(HFC)) {h[[x]]=unlist(strsplit(HFC[x],","))}
com=c()
sem=c()
for (x in 1:length(HFC)) {if (h[[x]][6] == 1) {com=c(com,h[[x]][3])} else {sem=c(sem,h[[x]][3])}}
hist(as.numeric(com),
     freq = TRUE,
     include.lowest = TRUE, right = TRUE,
     col = "firebrick1",
     main = "Com Hipertensão Arterial", xlim = c(0,8000),ylim=c(0,200),
     xlab = "Creatina fosfoquinase", ylab = "Frequência")
     
hist(as.numeric(sem),
     freq = TRUE,
     include.lowest = TRUE, right = TRUE,
     col = "deepskyblue",
     main = "Sem Hipertensão Arterial", xlim = c(0,8000), ylim=c(0,200),
     xlab = "Creatina fosfoquinase", ylab="Frequência")




