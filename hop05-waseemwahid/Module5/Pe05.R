# Poisson probability function
prob_pois <- function(x, lambda) {
    exp(-lambda) * lambda^x / factorial(x)
}

# Poisson cumulative probability function
cum_pois <- function(x, lambda) {
    sum(sapply(0:x, function(k) prob_pois(k, lambda)))
}
