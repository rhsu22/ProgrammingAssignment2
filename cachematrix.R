## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Creates a special matrix that caches its inverse
#
# Args:
#	x: Input matrix
makeCacheMatrix <- function(x = matrix()) {
	inv_ <<- NULL
		
	set <- function(y)	{
		x <<- y
		inv_ <<- NULL
	}
	get <- function() x
	
	setinv <- function(inv) inv_ <<- inv
	getinv <- function() inv_

	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

# Solves and caches the input makeCacheMatrix type
#
# Args:
#	x: Input matrix returned by makeCacheMatrix
#
# Returns:
#	Inverse of matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
        	return (m)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setinv(inv)
        inv
}
