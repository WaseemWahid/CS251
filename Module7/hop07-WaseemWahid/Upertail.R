mu0 <- 2            # hypopthesized value
xbar <- 2.1         # sample mean
sigma <- 0.25       # population standard deviation
n <- 35             # sample size

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

# compute the critical value at .05 significance level
alpha <- .05
z.alpha <- qnorm(1-alpha)

print("z.alpha is equal to")
print(z.alpha)

if(z>=z.alpha) {
    print("we reject the claim that there is at most 2 grams of saturated fat in a cookie")
} else {
    print("DO not reject the claim that there is at most 2 grams of saturated fat in a cookie")
}

