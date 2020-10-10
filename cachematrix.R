## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I followed the same example so I started with setting the matrix,
## getting the value of the matrix, then setting a value for the inverse of the matrix
## and getting the value of the inverse using solve function
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
    
  }
  get <- function () x
  setMatrixInverse <- function(solve) s <<- solve
  getMatrixInverse <- function() s
  list(set = set, get = get,
       setMatrixInverse = setMatrixInverse,
       getMatrixInverse = getMatrixInverse)
  

}


## Write a short comment describing this function
## This function checks if the inverse of the matrix is calculated or not, then if it calculated, it recalls the inverse
## if it is not calculated, it will calculates the matrix inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  s <- x$getMatrixInverse()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  
  data <- x$get()
  s <- solve(data, ...)
  x$setMatrixInverse(s)
  s
}




          