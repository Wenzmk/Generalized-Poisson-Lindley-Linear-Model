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

#GPLL MOdel
PQL.lik=function(par,y,X){
  b=par[1:k]
  t=par[k+1]
  niu=X%*%b
  ((n*log(t/(t+1)))+(sum(log(gamma(y+(((exp(niu))*t*(t+1)-1)/(t+1))))-log(gamma(1+(((exp(niu))*t*(t+1)-1)/(t+1))))))-(sum(log(factorial(y))))+(sum((((exp(niu))*t*(t+1)-1)/(t+1))*log(t/(t+1))))-(sum((y+1)*log(t+1)))+(sum(log(((exp(niu))*t*(t+1))-1+y+((((exp(niu))*t*(t+1))-1)/(t+1))))))
}
