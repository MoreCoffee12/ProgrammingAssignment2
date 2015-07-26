source("cachematrix.R")
B = matrix( c(2, 4, 3, 1 ), nrow=2, ncol=2)
print(B)
matrixx<-makeCacheMatrix(B)
matrixx$get()
cacheSolve(matrixx)
## This line should result in a recall of the cached matrix
cacheSolve(matrixx)

