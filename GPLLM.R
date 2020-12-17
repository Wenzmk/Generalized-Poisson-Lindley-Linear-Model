#input data
data=read.delim("clipboard")
datas=data
variable.names(data)

#Generalized Poisson-Lindley Distribution Parameter Estimation
n=nrow(data)
y=data$`claim_frequency`
GPL.lik=function(par,y){
  a=par[1]
  t=par[2]
  (n*(a+1)*log(t/(t+1))+sum(log(gamma(y+a))-log(gamma(a+1)))+sum(log(a+(y+a)/(t+1)))-sum(log(factorial(y)))-sum(y*log(t+1)))
}
library(maxLik)
result=maxLik(GPL.lik,method="nr",start=c(1,2.724743),y=y,gradtol=0.000001)
summary(result)

