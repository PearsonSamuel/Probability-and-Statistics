#semente=100
#m=1000
#miu=9.73
#variancia=1.12^2
#1-alfa=0.93
set.seed(706)
options(digits=8)
listadeamplitudes=replicate(750,2*qt(1-0.01,1146)*sd(rnorm(1147,9.87,2.42))/sqrt(1147))
amplitude=mean(listadeamplitudes)
print(amplitude)
qt(0.99,1146)
