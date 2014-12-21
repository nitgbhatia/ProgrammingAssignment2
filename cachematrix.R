## Below will be two functions, a function that can cache the inverse of a matrix 
## and a function that can compute the inverse of a matrix.

## This funciton will create a special matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(x) {
                mx <<- x;
                inverse <<- NULL;
        }
        get <- function() return(mx);
        setinv <- function(inv) inverse <<- inv;
        getinv <- function() return(inverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}
 

## This funciton will compute the inverse of the special matrix created above.
## If the inverse has already been computed, then the function below should retrieve 
## the inverse. 

cacheSolve <- function(x, ...) {
        inverse <- mx$getinv()
        if(!is.null(inverse)) {
                message("Getting cached data...")
                return(inverse)
        }
        data <- mx$get()
        invserse <- solve(data, ...)
        mx$setinv(inverse)
        return(inverse)
}



