# In this module, you have learned how to create a numerical vector in R.
#  Please generate a vector v which has a sequence of consecutive numbers from 1 through 30. 
# v = (1, 2, 3, 4, ..., 30) 
v <- 1:30
cat("V:", v,"\n")


# Using vector v, generates the output to complete the following steps. 
# In each step you must have the computer calculate the results, do not create a vector with the result calculated manually: 
# Using filters, create a vector v1 that contains the elements in v that are either a multiple of 3 or 5. v1 should look like this (3, 5, 6, 9, 10, 12, 15, ..., 30). 
v1 <- v[v%%3==0 | v%%5==0]
cat("V multiples of 3 or 5:", v1,"\n")

# Create another vector v2 by selecting elements in v whose values are greater than 15. v2 should look like this (16, 17, 18, ..., 30) 
v2 <- v[v>15]
cat("V higher than 15:", v2,"\n")

# Calculate the mean of v, v1, and v2. Place the value in the variables v_mean, v1_mean, v2_mean. Print the three variables. 
v_mean <- mean(v)
v1_mean <- mean(v1)
v2_mean <- mean(v2)
cat("mean of V:", v_mean,"\n")
cat("mean of V1:", v1_mean,"\n")
cat("mean of V2:", v2_mean,"\n")

# Calculate the coefficient of variation (standard deviation / mean) for each vector, place the result in the variables v_cv, v1_cv, v2_cv. Print the three variables. 
v_cv <- sd(v) / v_mean
v1_cv <- sd(v1) / v1_mean
v2_cv <- sd(v2) / v2_mean
cat("v_cv:", v_cv, "\n")
cat("v1_cv:", v1_cv, "\n")
cat("v2_cv:", v2_cv, "\n")

# Create a vector cv_all that contains (v_cv, v1_cv, and v2_cv) 
cv_all <- c(v_cv, v1_cv, v2_cv)
# Print the minimum value in cv_all. 
cat("value in all", min(cv_all))