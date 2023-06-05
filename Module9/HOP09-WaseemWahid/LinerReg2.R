library(caTools)
library(ggplot2)

# Read CSV, note the delimerer (sep)
df <- read.csv('student-mat.csv', header=True, sep=';')

# Set a random to see so your "random" results are the same as this HOP
set.seed(101)

# Split up the sample, basically randomly assigns a booleans to a new column "sample"
sample <- sample.split(df$G3, SplitRatio = 0.70) # SplitRatio = percent of sample ==True

# Training data 70% percent will be training data
train = subset(df, sample == TRUE)

# Testing Data, 30% will be test data
test = subset(df, sample == False)

# Train & build Model
model <- lm(G3 ~ ,. train)

print(summary(model))

# Grab risiduals 
res <- residuals(model)

# Convert to DataFrame for ggplot
res <- as.data.frame(res)

# Print first 6 rows of the res column
print(head(res))



# Histogram of risiduals
# print(ggplot(res,aes(res)) + geom_histogram(fill='blue', alpha=0.5))

# plot(model)

# We are goilg to make a variable G3, preditions and  we want to use the predict funtion from stats
# In order to do this to use to predict fuctions,
# We shoiuld pass our model as first arg and out test data as second arg
# if you are wonderinfg how the predict funct know which value to predict?
# THis infor in your model <-lm(G3 ~., train)
# your mode knows the formula and knows you are tryin to predict G3 based off all the feature
# of your training dataset
# so it means your predict funct needs the model thats already been trained
# and your test set should look same as your trainingset (same format)
G3.predictions <- predict(model, test)

# create a data frame wirth the two col the prediction data and the actual data
results <- cbind(G3.predictions,test$G3)

# name the two cols pred (prediction), real (actual data)
colnames(results) <- c('pred', 'real')
results <- as.data.frame(results)

print(head(results))

# Function to check if the number is <0, then make it zero
to_zero <- function(x) {
    if (x < 0) {
        return(0)
    } else {
        return(x)
    }
}

# Apply the to_zero funct on the preditcion cols which mean if any value in the col
# is less than 0, then any negative prediction will get pushed up to zero
# we are doing that because the actgual score is zero and no one has a negative score in real life
result$pred <- sapply(results$pred, to_zero)

# To make sure that the min value of your predicted col is zero
print(min(results))

# to evalutate our prediction values, we can use the mean squared error
# MSE is kind of a measure of how off you are
# The mean of (my actual results - my predicted result) squared
mse <- mean((results$real-results$pred)^2)

print('MSE')
print(mse)

# The R squared Value for our modfel (just for the predictions)
SSE <- sum((results$pred - results$real)^2)
SST <- sum((mean(df$G3) - results$real)^2)
R2 <- 1 - SSE/SST
print(R2)