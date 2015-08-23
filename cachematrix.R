## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


# This functions creates a spaecial "matrix" object that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  # keeps a matrix
  setMatrix <- function(new_xvalue)
  {
    x  <<- new_xvalue
    # when x has been assigned a new value, reset the value of the cache
    m <<- NULL
  }
  
  # retrieve the matrix value - x
  getMatrix <- function () {
    
    x
  
  }
  
  # store in cache - m
  storeInverse <- function (solve) {
    
    m <<- solve
    
  }
  
  # get the cache - m
  getInverse < - function () {
    
    m
  
  }
  
  # retrieve a list of functions
  list(setMatrix = setMatrix, getMatrix = getMatrix, storeInverse = storeInverse, getInverse = getInverse)
  
}


## Write a short comment describing this function
# This computes the inverse of the special "matrix" returned by the maeCachematrix
cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # retrieve value of the cache
  xInverse <- a$getInverse()
  
  # Check if the Inverse value exists
  if(!is.null(xInverse)){
    
    message("getting cached data")
    return(xInverse)
    
  }
  # If not Null calculate the inversre and store it in cache
  data <- a$getMatrix()
  xInverse <- solve(data)
  a$storeInverse
  
}
