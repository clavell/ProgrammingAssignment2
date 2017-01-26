## These functions will take a matrix and store it and its inverse
## in a different environment i.e. cache them

## This function creates a list of functions that can access the cached matrix
##and its inverse
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        
        set <- function(y) {
                x<<-y
                inverse <<- NULL
        }        
        get <- function(){
                x
        }
        
        setinverse <- function(i){
              inverse <<- i
        }
        
        getinverse <- function(){
                inverse
        }
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse and caches it if the inverse hasn't
## already been computed. Else it returns already computed inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(is.null(x$getinverse())){
                inv<-solve(x$get())
                inverse<<-x$setinverse(inv)
                return(inverse)
        }
        print("inverse already computed")
        inverse
}

