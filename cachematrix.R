## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## changing only two points from the original example
## the calling variable should be matrix



makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() {
    x
   }
  
setmean <- function(mean) {
    m <<- mean
    }
  
  getmean <- function() {
    m }
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  

  
  
  
}



## Write a short comment describing this function
## using the solve function instead of mean of the original example

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(m)
  m
  
  
  
}
