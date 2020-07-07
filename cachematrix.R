## Put comments here that give an overall description of what your
## functions do
## My functions wil find the mean of a vector and store it in a cache. 
## When the same vectors are looped for calculation, the cache values will be 
## returned thus reducing computation time.
## Write a short comment describing this function:
## This function finds the mean of the given vectors and stores it in a cache

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function:
## This calculates the inverse of the matrix with the above function
## If the inverse is already in the cache, it will be returned.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)){
                message(("getting cached data"))
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        
}
