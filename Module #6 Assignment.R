# 1. Create matrices
A <- matrix(c(2,0,1,3), ncol=2) 
B <- matrix(c(5,2,4,-1), ncol=2)

# a.
A + B
# b. 
A - B

# 2. 
diag(x = c(4,1,2,3), 4, 4)

# 3. 
matrix <- diag(x = c(3,3,3,3,3), 5,5)
matrix[1,] <- c(3,1,1,1,1)
matrix[,1] <- c(3,2,2,2,2)
matrix
