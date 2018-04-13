p_boy <- 1.09
p_girl <- 1
N <- 6
p_boy_atleast <- 3

p <- p_boy / (p_boy + p_girl)

combination <- function(n, x){
    return (factorial(n)/(factorial(x) * factorial(n-x)))
}

binomialDist <- function(X, N, P){
    return (combination(N, X) * P^X * (1-P)^(N-X))
}

atLeastBinomialDist <- function(R, N, P){
    result <- 0
    for (i in R:N){
        result <- result + binomialDist(i, N, P)
    }
    return (result)
}

res <- atLeastBinomialDist(p_boy_atleast, N, p)


cat(format(round(res, 3), nsmall=1))
