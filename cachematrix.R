## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

##set the value of the matrix
##get the value of the matrix
##set the inverse of the matrix
##get the inverse of the mean

makeCacheMatrix <- function(x = matrix()) {
      mat<-NULL
      set<-function(y){
      x<<-y
      mat<<-NULL
  }
  get<-function() x
  setmatrix<-function(inverseMatrix) mat<<- inverseMatrix
  getmatrix<-function() mat
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function
##this function will calculatethe inverse of the matrix created with the above function
##however it first checks to see in cache if the inverse is already calculated and present in cache
##then it gets from cache otherwise calculate the inverse and stores in cache via setmatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat<-x$getmatrix()
        if(!is.null(mat)){
          message("cached")
          return(mat)
        }
        matrix<-x$get()
        mat<-solve(matrix, ...)
        x$setmatrix(mat)
        mat
}
