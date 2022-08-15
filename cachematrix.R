## Week 3 programming assignment

## makeCacheMatrix creates a matrix to first set and get the elements of the matrix
## and then set and get the elements of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y){
          x<- y
          inv<-NULL
      }
      
      get <- function() x
      
      setinverse <- function(inverse) inv <- inverse
      getinverse <- function() inv
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## The following calcualtes the inverse of the matrix created above. 

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)){
            message("getting cached data")
            return(inv)
        }
        
        matrix_to_invert <- x$get()
        inv <- solve(matrix_to_invert, ...)
        x$setinverse(inv)
        inv
}






