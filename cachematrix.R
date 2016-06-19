# This code is my submission to "Programming Assignment 2: Lexical Scoping" assigned in Week 3 "Loop Functions and Debugging"
# of the Coursera Course "R Programming" by Johns Hopkins University.

# The objective is to write one function to cache the time-intensive calculation of the inverse of a matrix and another function to use the cached version if available
# or to caclulate the inverse if necessary.

# 1. Create a function that creates a vector to store the cached solution to x.

makeCacheMatrix <- function(m) {
	inv<-NULL
	set<-function(y) {
		m 		<<- y
		inv 	<<- NULL
					 }
	get 			    <- function() m
	setinverse		<- function(solve) inv <<- solve
	getinverse		<- function() inv
	list(set 		= set,
		   get 		= get,
		   setinverse	= setinverse,
		   getinverse	= getinverse
		   )
}

# 2. Create a function that: (a) returns the inverse of matrix x if it has been calculated already with a message explaining this, or (b) calculates the inverse of matrix x if this solution does not already exist.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

