## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	##create a version number to determine if a matrix x has been created, if not, create
	##if created, update the version number when x is updated
	if(!exists("matrixBase")){
       	 matrixBase <<- 1
		solveBase <<- 0
    	}else
    	{
        matrixBase <<- matrixBase + 1
	}

	##generate random number between 2 and 5 to set dimensions of the matrix
	matrixDim <- sample(2:5, 1) 

	##create a square matrix of random numbers between 0 and 10
	x <<- matrix(runif(matrixDim^2, min = 0, max = 10), nrow = matrixDim, ncol = matrixDim)

}

cacheSolve <- function() {
        ## Return a matrix that is the inverse of 'x'
		print("The original cached matrix is:")
		print(x)

		if(solveBase == 0 || solveBase != matrixBase){
			invX <<- solve(x)
			solveBase <<- solveBase +1
			print("The inverse of the cache matrix is:")
			print(invX)
		}else
		{
			print("Inverse of matrix x already created, stored as")
			print(invX)
		}
	
}

