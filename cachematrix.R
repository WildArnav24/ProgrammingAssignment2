## -------------------------------------------------------------------------
## Matrix Inverse Caching
##
## These functions avoid recalculating the inverse of the same matrix.
##
## makeCacheMatrix() creates a special matrix object containing:
##   1. The original matrix
##   2. A place to store its inverse
##   3. Functions for reading and updating both values
##
## cacheSolve() checks whether the inverse has already been calculated.
## If it has, the stored inverse is returned. Otherwise, the inverse is
## calculated using solve(), stored in the cache, and then returned.
## -------------------------------------------------------------------------

## Create a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  ## The inverse starts as NULL because it has not yet been calculated.
  inverse <- NULL
  
  ## Replace the current matrix with a new matrix.
  ##
  ## Whenever the matrix changes, the previously stored inverse is no
  ## longer valid. Therefore, the cached inverse must be cleared.
  ##
  ## The <<- operator updates variables in the parent environment rather
  ## than creating new local variables inside this function.
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  ## Return the matrix currently stored in the special matrix object.
  get <- function() {
    x
  }
  
  ## Store a calculated inverse in the cache.
  ##
  ## inverse_matrix is the result produced by solve().
  setinverse <- function(inverse_matrix) {
    inverse <<- inverse_matrix
  }
  
  ## Return the cached inverse.
  ##
  ## This returns NULL when the inverse has not yet been calculated.
  getinverse <- function() {
    inverse
  }
  
  ## Return the four functions as a list.
  ##
  ## These functions allow cacheSolve() to access and update the matrix
  ## and its cached inverse without directly accessing the variables.
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}

## Calculate the inverse of a cached matrix
cacheSolve <- function(x, ...) {
  
  ## First, check whether an inverse is already stored in the cache.
  inverse <- x$getinverse()
  
  ## If the inverse is not NULL, it has already been calculated.
  ## Return it immediately instead of calculating it again.
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  ## If no cached inverse exists, retrieve the original matrix.
  matrix_data <- x$get()
  
  ## Calculate the matrix inverse using solve().
  ##
  ## The ... argument allows additional optional arguments to be passed
  ## to solve() when cacheSolve() is called.
  inverse <- solve(matrix_data, ...)
  
  ## Save the newly calculated inverse so that future calls can reuse it.
  x$setinverse(inverse)
  
  ## Return the calculated inverse.
  inverse
}