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

#Generalized Poisson-Lindley Linear Model Parameter Estimation
data=read.delim("clipboard")
variable.names(data)
n=nrow(data)
y=data$`claim_frequency`
i=1
niu=c(rep(0,n))
x0=c(rep(1,n))
X=(cbind(x0,data[,c(-1,-2,-3)]))
y=data$`claim_frequency`
k=ncol(X)
PQL.lik=function(par,y,X){
  b=par[1:k]
  t=par[k+1]
  niu=X%*%b
  ((n*log(t/(t+1)))+(sum(log(gamma(y+(((exp(niu))*t*(t+1)-1)/(t+1))))-log(gamma(1+(((exp(niu))*t*(t+1)-1)/(t+1))))))-(sum(log(factorial(y))))+(sum((((exp(niu))*t*(t+1)-1)/(t+1))*log(t/(t+1))))-(sum((y+1)*log(t+1)))+(sum(log(((exp(niu))*t*(t+1))-1+y+((((exp(niu))*t*(t+1))-1)/(t+1))))))
}
library(maxLik)
result=maxLik(PQL.lik,method="nr",start=c(rep(0,k),1.44154),y=y,X=X,gradtol=0.000001)
variabel=c("konstanta",as.vector(variable.names(data[c(-1,-2,-3)])),"teta")
coef_estimation=cbind(variabel,result$estimate)
list(summary(result),coef_estimation)
AIC(result)
k
shapeof(X)
start=(c(rep(0,29),1.44154))
b=par[1:k]
as.matrix(X) %*% b

#Pemodelan Poisson Linear Model
library(MASS)
y=data$`claim_frequency`
b=glm(y~X[,-1], data=data, poisson(link="log"))
summary(b)
logLik(b)
