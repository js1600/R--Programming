## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##  Null the variable for the inverse
##  set the value of the Matrix
##  get the value of the Matrix
##  set the value of the Inverse
##  get the value of the Inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
	set <- function(y) {
	    x <<- y
          inv <<- NULL		

	}
	get <- function() x 
	    setinverse <- function(inverse)  inv <<- inverse
		getinverse <- function()inv
		list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
## 1. has this been done before, if so return that value.
## 2. Otherwise get the cached matrix
## 3. Find and return the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse
		if(!is.null(inv)) {
		    message("retrieving from Cache Matrix")
			return(inv)
		}
		dataset <- x$get
		inv <- solve(dataset)
		x$setinverse(inv)
		inv
}
