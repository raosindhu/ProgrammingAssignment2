## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInv <- function(matx) inverse <<- matx
  getInv <- function() inverse
  
  list(get = get,
       set = set,
       getInv = getInv,
       setInv = setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  cachedinv <- x$getInv()
  if(!is.null(cachedinv)) {
    message("getting cached inverse")
    return(cachedinv)
  }
  matx <- x$get()
  calcinv <- solve(matx, ...)
  x$setInv(calcinv)
  calcinv
}
