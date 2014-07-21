## I opted for a more object oriented approach:
## Only one function, which return an R object that
## contains both the original matrix and the cached inverse matrix.

## Usage:
## m <- cmatrix(matrix(1:4, 2, 2))
## get original matrix: m$get() 
## get inverse matrix: m$solve()
## get inverse matrix (cached): m$solve()

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
