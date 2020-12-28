# Generalized-Poisson-Lindley-Linear-Model
a case study in modeling the frequency claim of auto insurance using a generalized Poisson Lindley linear model.\

### Required Libraries
analysis was performed using RSTUDIO. Please make sure that the followings libraaries is already installed in your RStudio:
1. maxLik
2. MASS

### Description
This modeling method assumes that the data of claim frequency are from populations that follow generalized Poisson-Lindley distribution. Generalized Poisson-Lindley linear model is an alternative to modeling count data that contains overdispersion. The parameters in the generalized Poisson-Lindley linear model can be estimated using the maximum likelihood estimation method through Newton Raphson's iteration numerical method. 

### Result
From the research conducted it was concluded that the data is suitable to be modeled with generalized Poisson-Lindley linear models and produce better models than ordinary Poisson linear modeling because of produced the smaller AIC value. Of the 3 predictor variables that are modeled on the frequency of claims, 2 variables influenced they are the 'Use' variable and 'vehicle brand' variable.
