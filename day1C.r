con <- file('stdin', open='r')

stringToVector <- function(string){
    return (as.numeric(unlist(strsplit(string, " "))))
}

std <- function(v){
    return (sd(v) * sqrt((length(v)-1)/length(v)))
}

inputs <- readLines(con)

data <- stringToVector(inputs[[2]])

cat(format(round(std(data), 1), nsmall=1))
