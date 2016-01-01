## This function is identical to makeVector except the only change is the original
## argument x=matrix() and solve replaces mean. Passes functions to a list which is
## fed to cacheSolve
makeCacheMatrix <- function(x = matrix()) {
  s<-NULL   ## initialize inverse to zero in present environment. set to 0 each time its called
## set function allows you to re-superassign a new matrix to set which is then passed to 
## cachesolve without having to rerun makeCacheMatrix
  set <- function(y) {  
    x <<- y   ## when called it will superassign passed argument to x 
    s <<- NULL ## when called it will superassign s to null
  }
  get <- function() x ## function that recalls original matrix
  setsolve <- function(solve) s <<- solve ## function that superassigns passed argument to inverse
  getsolve <- function() s  ##returns the inverted matrix
  list(set = set, get = get,  ##All functions now get stored in a list
       setsolve = setsolve,   
       getsolve = getsolve)

}
## Return a matrix that is the inverse of 'x' and store it.
cacheSolve <- function(x, ...) {       
  s <- x$getsolve()  ##assigns list function getSolve that recalls inverse of s (if any)
  ## present in the calling environment, previously superassigned by setsolve. Note, this
  ## would be null if makeCacheMatrix was called again with the same matrix.
  if(!is.null(s)) {  ##if this superassign. variable is not null then returns cached value
    message("getting cached data")
    return(s)
  }
  data <- x$get() ## if s is null then retrieves stored matrix
  s <- solve(data, ...) ##applies the function
  x$setsolve(s) ## this now caches & superassigns the inverse of x in the list
  s  ##Return the value of s
}
