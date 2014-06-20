## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

  makeCacheMatrix <- function(x = matrix()) {
    cachevalue<-NULL
    set<-function(y){
      x<<-y
      cachevalue<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) cachevalue<<- solve
    getmatrix<-function() cachevalue
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  }
  

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    cachevalue <- x$getmatrix()
    if(!is.null(cachevalue)) {
      message("getting cached data")
      return(cachevalue)
    }
    data <- x$get()
    cachevalue <- solve(data, ...)
    x$setmatrix(cachevalue)
    cachevalue
  }
#to test initialize a matrix called m
  #then follow-----
  #test<-makeCacheMatrix(m)
  #cacheSolve(test)