
# This code is my submission to "Programming Assignment 2: Lexical Scoping" assigned in Week 3 "Loop Functions and Debugging"
# of the Coursera Course "R Programming" by Johns Hopkins University.

# The objective is to write one function to cache the time-intensive calculation of the inverse of a matrix and another function to use the cached version if available
# or to caclulate the inverse if necessary.


# 1. Create a function that creates a vector to store the cached solution to x.

makecacheSolve <- function(x = matrix()) {
 m<-NULL
 set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- solve(x)
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}        

# 2. Create a function that: (a) returns the inverse of matrix x if it has been calculated already with a message explaining this, or (b) calculates the inverse of matrix x if this solution does not already exist.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("Since the inverse of x has already been calculated and cached, I will return it to you.")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
