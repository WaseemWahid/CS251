# In this exercise, we will work with temp_max.csv file. This file contains daily maximum temperature of Seattle in July 2015. 
# We want to use t test to find out if the average maximum temperature in Seattle in July 2015 is the same as that of preceding years. 
# Between 2012 and 2014, the average maximum temperature of Seattle in July is 25.3 degrees Celsius. 
# Let's assume this is the population mean, but the population variance is not known. 
# We will use a two-sided test with a significant level of 0.01. The null hypothesis is stated as follows: 

# H0: The average maximum temperature of Seattle in July 2015 is equal to the average maximum temperature of July between 2012 and 2014 (25.3). 

# Follow the listed steps to conduct hypothesis testing.  

# Step 1 Initialize a variable mu0 with the average July temperatures between 2012 and 2014 (25.3) 
mu0 <- 25.3

# Step 2 Calculate the mean, standard deviation, and number of samples of the temperatures in July 2015 
temp_data <- read.csv("temp_max.csv")
mean_2015 <- mean(temp_data$Temperature)
standard_2015 <- sd(temp_data$Temperature)
n_2015 <- length(temp_data$Temperature)

# Step 3 Calculate t-statistic using mu0 and the information from part 2. Call it t. 
t <- (mean_2015 - mu0) / (standard_2015 / sqrt(n_2015))

# Step 4 Calculate the critical values tα/2 at 0.01 significance level. Call it t.half.alpha. 
alpha <- 0.01
t.half.alpha <- qt(1 - alpha/2, n_2015 - 1)

# Step 5 Is the null hypothesis rejected? 
null_hypothesis_rejected <- abs(t) > t.half.alpha

# Step 6 Calculate the p-value. Call it pval.  
pval <- 2 * pt(abs(t)m n_2015 - 1, lower.tail = FALSE)

# Check your result and compare it with what you obtained in #4. 
cat("t-statistic:", t, "\n")
cat("Critical value tα/2:", t_half_alpha, "\n")
cat("Null hypothesis rejected:", null_hypothesis_rejected, "\n")
cat("p-value:", pval, "\n")