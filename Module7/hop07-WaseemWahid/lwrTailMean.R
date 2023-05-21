mu0 <- 10000        # hypothesized value
xbar <- 9900        # sample mean
sigma <- 120        # population standard deviation 
n <- 30             # sample size

z <- (xbar-mu0) / (sigma/sqrt(n)) # test statistic

print("z is equal to")
print(z)

# calculate the critical value
alpha <- 0.05
z.alpha <- qnorm(1-alpha)

print("Critial value is equal to")
print(-z.alpha)

if(z <= -z.alpha) {
    print("Reject the claim that mean lifetime of a light bult is above 10,000 hours")
} else {
    print("Do not reject the claim that mean lifetime of a lightbulb is above 10,000 hours")
}