# Generalized-Poisson-Lindley-Linear-Model
a case study in modeling the frequency claim of auto insurance using a generalized Poisson Lindley linear model.

### Required Libraries
analysis was performed using RSTUDIO. Please make sure that the followings libraaries is already installed in your RStudio:
1. maxLik
2. MASS

### About Data
The data are the secondary data took from XYZ Company for the 2013 policy which is overdispersed.
1. The Brand variable is describe the brand of vehicle. Brand variable have 23 Categories and all of Dmerk is the dummy variable form of Brand Variable with AUDI as reference.
2. The Use variable is describe the use of vehicle. Use variable have 6 categories and all of DPengg is the dummy variable form of Use Variable with Freight Transportation as reference.
3. The Claim Frequency variable is describe count of claim frequency in the past 1 year.
4. The vehicle age variable is describe the age of vehicle.


### Description
This modeling method assumes that the data of claim frequency are from populations that follow generalized Poisson-Lindley distribution. Generalized Poisson-Lindley linear model is an alternative to modeling count data that contains overdispersion. The parameters in the generalized Poisson-Lindley linear model can be estimated using the maximum likelihood estimation method through Newton Raphson's iteration numerical method. For the detail about Generalized-Poisson-Lindley-Linear-Model click this following Link [GPLLM](https://journal.unhas.ac.id/index.php/jmsk/article/view/9315) and download the [PDF](https://journal.unhas.ac.id/index.php/jmsk/article/view/9315/pdf) file.

### Result
From the research conducted it was concluded that the data is suitable to be modeled with generalized Poisson-Lindley linear models and produce better models than ordinary Poisson linear modeling because of produced the smaller AIC value. Of the 3 predictor variables that are modeled on the frequency of claims, 2 variables influenced they are the 'Use' variable and 'vehicle brand' variable.
