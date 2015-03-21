## These functions are very similar against functions from example
## These functions are functions for working with matrixes and for cashing inverse matrix


## Function makeCacheMatrix create a special sort of matrix a little more strong than clear matrix
## There are four methods. They quite simple but I think that I need to create comment...
## setMatrix for set new matrix to our object
## getMatrix for get our matrix
## setSolve for cashe inverse of matrix
## getSolve for get inverse of matrix if it cashed
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL 
  setMatrix <- function(y) {
    x <<- y
    s <<- NULL ##When we set a new matrix we need to erase old information about inverse
  }
  getMatrix <- function() x
  setSolve <- function(solve) s <<- solve
  getSolve <- function() s
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setSolve = setSolve,
       getSolve = getSolve)
  
}


## This function take our extended matrix as an argument and try to find cashed inverse of matrix
## If there is    cashed inverse of matrix this function return it
## If there is no cashed inverse of matrix this function calculate inverse of matrix
##, write it in our object by setSolve metod and after this return inverse of matrix

cacheSolve <- function(x, ...) {
  
  s <- x$getSolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$getMatrix()
  s <- solve(data, ...)
  x$setSolve(s)
  s
  
        ## Return a matrix that is the inverse of 'x'
}
