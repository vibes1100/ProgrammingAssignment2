## Put comments here that give an overall description of what your
## functions do

## Store a matrix and its inverse. Cache inverse if calculated once

makeCacheMatrix <- function(x = matrix()) {
    xinv <- NULL
    set <- function(y){
        x <<- y
        xinv <<- NULL
    }
    get <- function() x
    setinv <- function(...) {
        xinv <<- solve(x,...)
        return(xinv)
    }
    getinv <- function() xinv
    list(set=set, get=get , setinv=setinv, getinv=getinv)
}


## Computes the inverse of the matrix returned by makeCacheMatrix. 
## If the inverse is already cached, it retrieves the cached value. Otherwise, 
## it computes the inverse, stores it, and returns it.

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)){
        print("Getting cached inverse...")
        return(m)
    }
    else x$setinv(...)
        ## Return a matrix that is the inverse of 'x'
}
