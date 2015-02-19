## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes matrix x as an input and defines functions that cacheSolve calls.
## The functions include: get, which simply is a function that returns x
## setinverse, which is a function that takes the inverse of x and stores it to inv
## getinverse, which is a function that returns inv

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    get <- function() { x }
    setinverse <- function (inverse) { inv <<- inverse }
    getinverse <- function() { inv }
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve takes a matrix as an input. Firt, it looks to see it calls the inverse
## using getinverse from above. If the inverse exists, it will return it along with 
## a message. If it does not exist, it will call the get funciton above to create and
## set the inverse to inv. 

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    mtrx <<- x$get()
    invmtrx <- solve(mtrx, ...)
    x$setinverse(invmtrx)
    invmtrx
        ## Return a matrix that is the inverse of 'x'
}  
