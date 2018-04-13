con <- file('stdin',open='r')
x_i <- (readLines(con))[[2]]
x_s <- strsplit(x_i," ")
x <- as.numeric(unlist(x_s))

mode <- function(x){
    ux <- sort(unique(x))
    ux[which.max(tabulate(match(x,ux)))]
 }

m1 <- mean(x)
m2 <- median(x)
m3 <- mode(x)

cat(m1,sep="\n")
cat(m2,sep="\n")
cat(m3,sep="\n")
