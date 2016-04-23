## Put comments here that give an overall description of what your
## functions do

## This script has been edited by Hazim Hanif for Week 3 Assignment
## Enjoy 

## Write a short comment describing this function

## i is the inverse
## x is the entered matrix
## makeCacheMatrix function creates a special "matrix" that has a list of
## functions such as set,get,setInv,getInv.


makeCacheMatrix <- function(x = matrix()) {
  
   i <- NULL
   
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function(){x}

  setInv <- function(inv){ i <<- inv}
  
  getInv <- function(){i}
  
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function
## This function will calculate the inverse of the special matrix
## The calculation of the inverse matrix will be using the solve() function
## It first check whether the inverse has been calculated or not
## If it is, it will get the inverse from the cache and skips the calculation
## Else, it will calculate the inverse and set the inverse using setInv() function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getInv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat)
  x$setInv(i)
  i
}
