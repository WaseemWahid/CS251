mu0 <- 15.4         # Hypothesized value
xbar <- 34.6        # sample mean
sigma <- 2.5        # population standard deviation
n <- 25             # sample size

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

# compute the critical values at .05 significance level
alpha = 0.5
z.half.alpha = qnorm(1-alpha/z)
print(c(-z.half.alpha, z.half.alpha))

if(z <= -z.half.alpha || z >= z.half.alpha) {
    print("reject the null hypothesis that the mean penguin weight does not differ from last year")
} else {
    print("do not reject the null hypothesis that the mwean penguin weight does not differ from last year")
}