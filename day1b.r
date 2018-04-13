x_i <- file('stdin',open='r')
x <- readLines(x_i)
x_n <- x[[2]]
x_w <- x[[3]]
s2vec <- function(string){
    return (as.numeric(unlist(strsplit(string, " "))))
}
res <- sum(s2vec(x_n) * s2vec(x_w)) / sum(s2vec(x_w)) 
cat(format(round(res, 1), nsmall=1))
