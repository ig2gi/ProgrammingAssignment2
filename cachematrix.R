## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

cmatrix <- function(m = matrix()) {
  # inverse matrix
  im <- NULL 
  # get original matrix
  get <- function() m
  # cached solve function: get inverse matrix
  csolve <- function() {
    if(!is.null(im)) {
      message("getting cached inverse matrix")
      return(im)
    }
    # we assume that the matrix supplied is always invertible.
    im <<- solve(m)
    im
  }
  #
  list(get = get, solve = csolve)
}
