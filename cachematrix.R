## These functions modify the provided programs "makeVector" and "cachemean" and
## perform in a similar manner except that the input and the outcomes are different
## arguments and objects. Instead of creating a vector and finding the mean and retrieving 
## it from the cache, we create a matrix and find its inverse and retrieve it from the cache.

## makeCacheMatrix will create a matrix, set the value of the  matrix, and get the value of the 
## matrix. Then it will set the value of the inverse and get the value of the inverse. 

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = setInverse,
  getInverse = getInverse)
}


## cacheSolve will calcualte the inverse of the matrix created by the above function 
## if it hasn't already been calcuated by that function. If it has been calculated it gets the inverse 
## from the cache. If not it will calculate the inverse and sets the value of the inverse 
## in the cache with solve. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j))
  message("getting cached data")
  return(j)
}
  mat <- x$get()
  j <- solve(mat,...)
  x$setInvers(j)
  j
}

