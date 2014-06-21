## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function -makecachematrix take a matrix
#  return a list of 4 items


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
    cachevalue <- x$getmatrix()   #checking the X vectors cache
    if(!is.null(cachevalue)) {    #if there is cache
      message("getting cached data")
      return(cachevalue)          # return the cachevalue no need to compute
    }
    data <- x$get()               # if no cache is there
    cachevalue <- solve(data, ...)  # compute the inverse
    x$setmatrix(cachevalue)
    cachevalue                  #returning the inverse matrix of provided matrix 
  }
#to test initialize a matrix called m
  #then follow-----
  #test<-makeCacheMatrix(m)
  #cacheSolve(test)