## Prepared by Felix M - Greetings from Cincinnati, OH, USA
## This first section sets and gets the value of the matrix.
## Once the matrix is assigned, we can set or get the inverse.

makeCacheMatrix <- function(x = matrix()) {
m<- NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setinverse<-function(solve) m<<-solve
getinverse<-function() m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## The following section calculates the inverse using the solve function
## the inverse is designated with an m
## if the m already exist, then it gets it from the function above
## otherwise it gets calculated

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
data <- x$get()
m <- solve(data,...)
x$setinverse(m)
m
}

## Return a matrix that is the inverse of 'x'
