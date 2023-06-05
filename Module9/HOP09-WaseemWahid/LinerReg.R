library(ggplot2)
library(ggthemes)
library(corrplot)
library(dplyr)
library(corrgram)

# Read CSV, note the delimeter (sep)
df <-read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))
# Run code to see the o/p before writing the next line

# print(summary(df))

# Check if you have NA values
print(any(is.na(df)))

# Grab only numerical columns 
num.cols <-sapply(df, is.numerical)

# Filter to numeric colums for correlatio
cor.data <- cor(df[,num.cols])

corrplot(cor.data, method='color')

# Since we are goingf to eventually try to predict the G3 score lets see a histogram of these scores
print(ggplot(df,aes(x=G3)) + geom_histogram(bins=20, alpha=0.5, fill='blue') + theme_minimal())

