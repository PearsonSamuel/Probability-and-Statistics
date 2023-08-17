set.seed(656)

mean_amp <- function(n) {
  m=mean(replicate(1300,2*qt(0.99,n-1)*sd(rnorm(n,9.71,2.27))/sqrt(n)))
  return(m)
}

x=seq(100,5000,100)
y=sapply(x,mean_amp)

plot(x,y, main="Média da Amplitude dos IC",
     xlab="n", ylab="MA(n)", ylim=c(0,1.2), pch=19, col="blue",grid())
