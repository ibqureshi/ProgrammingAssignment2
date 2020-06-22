## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ## tbh idk what this does i just made it mirror the cachemean
  a <- NULL
  set <- function(b) { 
    x <<- b
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- x$getinverse ##the inverse of the passed in matrix is set to a which was nothing before
  if (!is.null(a)) { ## if a has stuff in it it has cached data
    message("getting cached data")
    return(a)
  }
  data <- x$get() ## 
  a <- solve(data, ...) ## solves for inverse
  x$setinverse(a) ## sets inverse to a
  a ## returns a
}
