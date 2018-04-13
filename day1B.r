
# Interquartile Range
con <- file('stdin', open='r')

stringToVector <- function(string){
    return (as.numeric(unlist(strsplit(string, " "))))
}

inputs <- readLines(con)
data <- stringToVector(inputs[[2]])
repeatitions <- stringToVector(inputs[[3]])

total_data <- c()

for (i in 1:length(data)){
    total_data <- c(total_data, rep.int(data[i], repeatitions[i]))
}

total_data <- sort(total_data)

quart <- function(x) {
  x <- sort(x)
  n <- length(x)
  m <- (n+1)/2
  if (floor(m) != m) {
    l <- m-1/2; u <- m+1/2
  } else {
    l <- m-1; u <- m+1
  }
  return (median(x[u:n]) - median(x[1:l]))
}

res <- quart(total_data)
cat(format(round(res, 1), nsmall=1))
