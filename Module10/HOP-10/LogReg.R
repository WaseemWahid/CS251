library(ggplot)

# Logistic regression
# read file
df.train <- read.csv('titanic_train.csv')
print(head(df.train))
print(str(df.train))


print(ggplot(df.train, aes(Survived)) + geom_bar())

# pclass visual
print(ggplot(df.train, aes(Pclass)) + geom_bar(aes(fill=factor(Pclass))))
# gender visual
print(ggplot(df.train, aes(Sex)) + geom_bar(aes(fill=factor(Sex))))
# Age visual
print(ggplot(df.train, aes(Age)) +geom_histogram(bins=20, alpha=0.5, fill='blue'))

# visual age v pclass
p1 <- ggplot(df.train, aes(Pclass, Age))
p1 <- p1 + geom_boxplot(aes(group=Pclass, fill=factor(Pclass)m alpha=0.4))
print(p1 + scale_y_continuous(breaks=seq(min(0), max(80), by=2)))

# clean the data
impute_age <- function(age, class) {
    out <- age
    for (i in 1:length(age)) {
        if(is.na(age[i])) {
            if(class[i] == 1) {
                out[i] <- 37
            } else if (class[i] == 2) {
                out[i] <-29
            } else {
                out[i] <- 24
            }
        } else {
            out[i] <- age[i]
        }
    }
    return(out)
}

# call fuinction
fixed.ages <- impute_age(df.train$Age, dr.train$Pclass)

df.train$Age <- fixed.ages

print(any(is.na(df.train$Age)))

library(dplyr)

df.train <- select(df.train, passengerId, Name, Ticket, Cabin)
print(head(df.train))

# Convert data
df.train$Survived <- factor(df.train$Survived)
df.train$Pclass <- factor(df.train$Pclass)
df.train$Parch <- factor(df.train$Parch)
df.train$SibSp <- factor(df.train$SibSp)

library(caTools)
set.seed(101)

# split into training and testing
split=sample(df.train$Survived, SplitRatio=0.70)

final.train = subset(df.train, split== TRUE)
final.test = subset(df.train, split== FALSE)

final.log.model <- glm(formual=Survived ~., family=binomial(link=logit), data=final.train)
print(summary(final.log.model))

# Predicted using final.log.model
fitted.probabilities <- predict(final.log.model, newdata=final.test, type='response')
fitted.results <- ifelse(fitted.probabilities > 0.5, 1, 0)

ClassificationError <- mean(fitted.results != final.test$Survived)
print("Accuract is equal to: ")
print(1 - ClassificationError)