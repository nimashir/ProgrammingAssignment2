## Put comments here that give an overall description of what your
## functions do
## function makeCachMatric return a list. It create a matrix objext and will be used to retrieve the inverse of a matrix or
## setting the inverse for the first time

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                inv<-NULL
                }
        get<-function() x
        setInverse<- function(inverse) inv<<-inverse
        getInverse<- function() inv
        list( set=set, get=get, setInverse=setInverse, getInverse=getInverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<- x$getInverse
        if(!is.null(inv)){
                message("getting cash data")
                return(inv)
        }
        matrix<-x$get
        inv<-solve(matrix)
        x$setInverse(inv)
        inv
}       
