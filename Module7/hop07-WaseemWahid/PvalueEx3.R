mu0 <- 2            # hypothesized value
xbar <- 1.8         # sample mean
n <- 10             # sample size
s <- 0.15           # sample standard deviation
alpha<- 0.01

t <- (xbar-mu0)/(s/sqrt(n))
print("The value of t is equal to")
print(t)

# apply the pt fuction to compute the lower tail p-value of the test statistic.
pval = pt(t, df=n-1)
print("pval is equal to")
print(pval)

if(pval < alpha) {
    print("Reject the null hypothesis")
} else {
    print("Accept the null hypothesis")
}