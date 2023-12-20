
## Create a "make" function to define functions and list them

makeCacheMatrix <- function(x = matrimx()) {
  im <- NULL
  set <- function (y) {
    x <<- y
    im <<- NULL
  }
  get <- function () x
  setim <- function (inversematrix) im <<- inversematrix
  getim <- function () im
  list(set = set, get = get, setim = setim, getim = getim)

  
}


## Return a matrix that is the inverse of 'x' 

cacheSolve <- function(x, ...) {

  im <- x$getim()
  if(!is.null(im)){
    message("getting cached data")
    return (im)
  }
  data <-x$get()
  im <- solve(data)
  x$setim (im)
  im
}
