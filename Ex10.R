set.seed(704)

mean_amp <- function(n) {
  m=mean(replicate(650,2*qt(0.96,n-1)*sd(rnorm(n,9.32,3.24))/sqrt(n)))
  return(m)
}

media_sem_contam=sapply(seq(100,5000,100),mean_amp)
media_sem_contam

substitui <- function(n) {
  e=0.2*n
  s=sample(1:n,e)
  l=replicate(650,rnorm(n,9.32,3.24))
  lc=replicate(650,rnorm(e,15.02,3.24))
  for(i in 1:e) {
    l[s[i],]=lc[i,]
  }
  return(l)
}

mean_amp2 <- function(n) {
  sub=substitui(n)
  m=2*qt(0.96,n-1)*sd(sub)/sqrt(n)
  return(m)
}

media_com_contam=sapply(seq(100,5000,100),mean_amp2)
media_com_contam

plot(seq(100,5000,100),media_sem_contam, main="Média da Amplitude dos IC",
     xlab="n", ylab="Média da Amplitude", pch=19, col="blue",grid(),ylim=c(0,1.5))
points(seq(100,5000,100),media_com_contam,col="coral1",pch=19)
legend(x=2000,y=1.25, legend=c("MA(n)", "MAc(n)"),pch=19,col=c("blue", "coral1"))




