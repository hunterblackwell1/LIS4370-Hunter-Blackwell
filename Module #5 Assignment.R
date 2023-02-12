# The two matrices
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)
A
# Transpose A and B
t(A)
t(B)

# Create two vectors
a <- c(1:10)
b <- c(1:100)

# Multiply matrices by vectors
AXa <- A %*% a
BXb <- B %*% b
AXa
# Reassign the vectors
a <- c(10:1)
b <- c(10:1)

# Multiply the matrices
AB <- A %*% B
AB
# Inverse matrix
S <- matrix(AB, nrow=32)
S_Inverse <- solve(S)

# Check determinants
det(S)

