## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inversa <- NULL
        set <- function(y) {
                x <<- y
                inversa <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inversa <<- inverse
        getInverse <- function() inversa
        list(set = set, 
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## devuelve una matriz que es la inversa de 'x'
        inversa <- x$getInverse()
        if (!is.null(inversa)) {
                message("tomando datos cached")
                return(inversa)
        }
        mat <- x$get()
        inversa <- solve(mat, ...)
        x$setInverse(inversa)
        inversa
        
}
