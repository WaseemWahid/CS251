# Step 1: Use the read.table() function in R to read the file and store the data in a variable called flu.
flu <- read.table("Flu.txt", header = TRUE)

# Step 2: Divide the data set into training and test sets. 
# You mentioned using 40 rows for training and the remaining 10 rows for testing. 
# You can achieve this using indexing. Here's an example:
train <- flu[1:40, ]
test <- flu[41:50, ]

# Step 3: Fit a logistic regression model using the training data. Use the glm() 
# function and specify the formula with the dependent variable ('Shot') and independent variables ('Age' and 'Health.Aware'). 
# Assign the model to a variable called train.glm
train.glm <- glm(Shot ~ Age + Health.Aware, data = train, family = binomial)

# Step 4: Display the summary of the fitted logistic regression model using the summary() function.
summary(train.glm)

# Step 5: Check the significance of coefficients at the 95% level
# The significance is determined by the p-values. If a p-value is less than 0.05 (α = 0.05), the coefficient is considered significant.

# Step 6: Calculate the accuracy of the trained model using the test data. 
predicted <- ifelse(predict(train.glm, newdata = test, type = "response") > 0.5, 1, 0)
actual <- test$Shot
accuracy <- mean(predicted == actual)

# Step 7: Print the accuracy of the trained model
print(accuracy)
