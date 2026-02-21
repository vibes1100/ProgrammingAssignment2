## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)){
        print("Getting cached inverse...")
        return(m)
    }
    else x$setinv(...)
        ## Return a matrix that is the inverse of 'x'
}
