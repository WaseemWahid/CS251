# Two sample t Test
# Equal variance - use pooled variance

# Assume mc1, and mc2 are the two samples from the test

mc1 <- c(150, 152, 154, 152, 151)
mc2 <- c(156, 155, 158, 155, 154)

# First check the equality of variance - F test willbe covered later
print(var.test(x=mc1, y=mc2))  # Run code
# the o/p of the run: pvalue is high > 0.05 then the two variances are equal

# Then we will do tje t.test forequal variance
tTest.result <- t.test(x=mc1, y=mc2, var.equa=t)
print(tTest.result)

