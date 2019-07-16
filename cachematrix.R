## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  j<- NULL
  ##  Setting the matrix
  set <- function(matrix){
    m<<- matrix
    j<<- NULL
  }
  ## Getting the matrix
  get <- function() {
    m
  }
  ## Setting the inverse of the matrix
  setInverse <- function(inverse){
    j<<- inverse
  }
  ## Getting the inverse of the matrix
  getInverse <- function() {
    j
  }
  
  list(set = set , get = get, setInverse = setInverse, gertInverse = getInverse )
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- get$Inverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## Calculate the inverse of the matrix
  m <-  solve(data)%$% data
  ## Setting the inverse of the matrix
  x$setInverse(m)
  m 
}



