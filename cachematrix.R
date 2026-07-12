## This file contains two functions used to cache the inverse of a matrix.
## makeCacheMatrix creates a special matrix object that stores a matrix
## and its inverse. cacheSolve calculates the inverse using solve(), or
## returns the cached inverse if it has already been calculated.

## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  
  ## Replace the matrix and clear the old cached inverse
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  ## Return the matrix
  get <- function() {
    x
  }
  
  ## Store the inverse
  setinverse <- function(solve) {
    inverse <<- solve
  }
  
  ## Return the cached inverse
  getinverse <- function() {
    inverse
  }
  
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Calculates the inverse or retrieves it from the cache
cacheSolve <- function(x, ...) {
  
  inverse <- x$getinverse()
  
  ## Return the cached inverse when available
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  ## Otherwise calculate and cache the inverse
  matrix_data <- x$get()
  inverse <- solve(matrix_data, ...)
  x$setinverse(inverse)
  
  inverse
}
