
# This code is my submission to "Programming Assignment 2: Lexical Scoping" assigned in Week 3 "Loop Functions and Debugging"
# of the Coursera Course "R Programming" by Johns Hopkins University.

# The objective is to write one function to cache the time-intensive calculation of the inverse of a matrix and another function to use the cached version if available
# or to caclulate the inverse if necessary.


# 1. Make a simple matrix to use as a test case. Call it x.

x<-matrix(1:4,2,2)

# 2. Calculate the inverse of x, so that we will know what to expect when we ask R to return this inverse matrix.

solve(x)

# 3. Create a function that takes the inverse of (i.e., "solves") matrix x.

makecacheSolve <- function(x = matrix()) {
 y<<-solve(x) }

# 4. Create a function that: (a) returns the inverse of matrix x if it has been calculated already with a message explaining this, or (b) calculates the inverse of matrix x if this solution does not already exist.

cacheSolve <- function(x, ...) {
        inv <- y
        if(!is.null(inv)) {
                message("Since the inverse of x has already been calculated and cached, I will return it to you.")
                return(inv)
        }
        y<-solve(x)
        y
}

# 5. Run a test case of the first function on x.

makecacheSolve(x)

# 6. Run a test case of the second function on x, when the first function has already been run (i.e., the inverse is already calculated). See that the message from step #4 and answer equal to step #2 are returned.

cacheSolve(x)

# 7. Run a test case of the second function on x, when the first function has already been run (i.e., the inverse is already calculated). See that the answer equal to step #2 is returned.

y<-NULL

cacheSolve(x)
