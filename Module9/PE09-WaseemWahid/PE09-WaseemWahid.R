# 1: Read the file and store the data into heights using read.table():
heights <- read.table("Heights.txt", header = TRUE)

# 2: Plot the data between Husband and Wife using plot(). Place the Husband in the y-axis. 
plot(heights$Wife, heights$Husband, ylab = "Husband", xlab = "Wife")

# 3: Fit a linear regression model between Husband and Wife using lm(), use Wife as independent variable and Husband as dependent variable. 
heights.lm <- lm(Husband ~ Wife, data = heights)

# 4: Display the coefficients of the regression model using heights.lm$coefficients.
heights.lm$coefficients


# 5: Draw the fitted line onto the plot in #3 by using abline(heights.lm). 
abline(heights.lm)


# 6: Display the summary of the fitted regression by using summary(heights.lm).  
summary(heights.lm)


# 7: Print the multiple R-squared value. (An R-squared value closer to 1 indicates the model explains the data well.) 
summary(heights.lm)$r.squared


# 8: Determine if the coefficient of Wife is valid at the significance level of 1%. 
coefficients <- summary(heights.lm)$coefficients
wife_p_value <- coefficients["Wife", "Pr(>|t|)"]
# Check if the p-value is less than 0.01
if (wife_p_value < 0.01) {
    print("The coefficient of Wife is statistically significant at the 1% level.")
} else {
    print("The coefficient of Wife is not statistically significant at the 1% level.")
}


# 9: Draw the residual plot using plot(). 
plot(heights.lm, which = 1)
