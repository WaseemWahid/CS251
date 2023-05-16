# In this problem we will be using the mpg data set, to get access to the data set you need to load the tidyverse library. 

# Complete the following steps: 

# Create a histogram for the cty column with 10 bins 

ggplot(mpg, aes(x = cty)) +
    geom_histogram(bins = 10) +
    labs(x = "mpg", y = "Frequency") +
    ggtitle("Histogram of cty column")

# Does the mpg variable look normal? 

# Calculate the mean and standard deviation for the cty column 

mean_cty <- mean(mpg$cty)
sd_cty <- sd(mpg$cty)

# Assume the variable theoretical mpg is a variable with a normal distribution with the same mean and standard deviation as cty. Using theoretical mpg, calculate the following: 

# The probability that a car model has an mpg of 20.

prob_mpg_20 <- pnorm(20, mean = mean_cty, sd = sd_cty)

# The probability that a car model has an mpg of less than 14.

prob_mpg_less_than_14 <- pnorm(14, mean = mean_cty, sd = sd_cty)


# The probability that a car model has an mpg between 14 and 20.

prob_mpg_between_14_20 <- diff(pnorm(c(14, 20), mean = mean_cty, sd = sd_cty))

# The mpg for which 90% of the cars are below it.

mpg_90_percent <- qnorm(0.9, mean = mean_cty, sd = sd_cty)