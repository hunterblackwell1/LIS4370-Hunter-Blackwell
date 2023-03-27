tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] 
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) }

example <- matrix(c(5,10,15,20,25,30,35,40,45,50), nrow = 5, ncol = 2)
debug(tukey_multiple)
tukey_multiple(example)
