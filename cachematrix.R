## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(matr = matrix()) {
        inre <- NULL
        set <- function(y) {
                matr <<- y
                inre <<- NULL
        }
        get <- function() matr
        setinverse <- function(i) inre <<- i
        getinverse <- function() inre
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ir <- x$getinverse()
        if(!is.null(ir)) {
                message("getting invserse matrix")
                return(ir)
        }
        data <- x$get()
        ir <- solve(data, ...)
        x$setinverse(ir)
        ir
        ## Return a matrix that is the inverse of 'x'
}
