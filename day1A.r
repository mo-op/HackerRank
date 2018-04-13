con <- file('stdin', open='r')

stringToVector <- function(string){
    return (as.numeric(unlist(strsplit(string, " "))))
}

data_line <- readLines(con)[[2]]

v <- stringToVector(data_line)

quart <- function(x) {
  x <- sort(x)
  n <- length(x)
  m <- (n+1)/2
  if (floor(m) != m) {
    l <- m-1/2; u <- m+1/2
  } else {
    l <- m-1; u <- m+1
  }
  o <- c(Q1=median(x[1:l]), median(x) ,Q3=median(x[u:n]))
  return (o)
}

x <- quart(v)

cat(x, sep="\n")
