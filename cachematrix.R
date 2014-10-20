## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set initial variable to cache get initial variable to cache create list for cachesolve
## I acknowledge reading Sefa Kilic repository before starting to make sure I was on the right track

makeCacheMatrix <- function(x = matrix()) {

	if(is.matrix(yourmatrix)){
    			ympowerminus1 <- NULL 
    			setmatrix <- function(y) { 
        		yourmatrix <<- y 
        		ympowerminus1  <<- NULL
			} 
    	 
   			getmatrix <- function() yourmatrix 
    			setmatrixinverse <- function(solve) ympowerminus1 <<- solve 
    			getmatrixinverse <- function() ympowerminus1
    			list(set=setmatrix, get=getmatrix, setmatrixinverse=setmatrixinverse, getmatrixinverse=getmatrixinverse) 
	}
	else
		{
			message("invalid format!")
			
		}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv_matrix <- x$getmatrixinverse() 
     if(!is.null(inv_matrix)) { 
        message("getting cached data.") 
        return(inv_matrix) 
    } 
    data <- x$get() 
    inv_matrix <- solve(data) 
    x$setmatrixinverse(inv_matrix) 
    inv_matrix
        
        
}

##testcode
##mymatrix<-rbind(c(1,2),c(2,1))
##source("makeCacheMatrix.R")
##vallist<-makeCacheMatrix(mymatrix)
##source("cacheSolve.R")
##myinv<-cacheSolve(vallist)
##myinv%*%mymatrix
###     [,1] [,2]
##[1,]    1    0
##[2,]    0    1
##








