## Put comments here that give an overall description of what your
## functions do

## makeCache creates a special "matrix", which is really a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL

  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x

  setinv <- function(inverseIn) inv <<- inverseIn
  
  getinv <- function() inv
  
  list(set = set, get = get,
       setinv = setinv, 
       getinv = getinv)
}


## Use the special "matrix" to calculate an inverse, if it doesn't exist. If it does exist
## then use the previously calculated function.

cacheSolve <- function(x = matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  
  if( !is.null(inv)){
    message("Getting cached inverse")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv

}
