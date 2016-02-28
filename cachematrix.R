## makeCacheMatrix
#
# Code to calculate the inverse of a matrix and save it to the cache.

makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL

        setMatrix <- function(newValue) {
                x <<- newValue
                cache <<- NULL
        }
        
        getMatrix <- function() {
                x
        }
        
        cacheInverse <- function(solve) {
                cache <<- solve
        }
        
        getInverse <- function() {
                cache
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## cacheSolve
#
# Code to calculates  inverse of a special "matrix" created with above function.
# This code, first checks if the inverse has already been created.

cacheSolve <- function(x, ...) {

        inverse <- y$getInverse()
        
        if(!is.null(inverse)) {
                message("Matrix already inversed; getting cached data")
                return(inverse)
        }

        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        return (inverse)
}
