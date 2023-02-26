#1. Import dataset
UKSoccer <- read_csv("UKSoccer.csv", show_col_types = FALSE)
UKSoccer <- as.data.frame(UKSoccer)
head(UKSoccer)
list(UKSoccer)
library(pryr)
otype(UKSoccer)
isS4(UKSoccer)
ftype(print)
print(UKSoccer)
summary(UKSoccer)
attributes(UKSoccer)
isS4(UKSoccer)
#2. S3 Examples
isjob <- function(hasJob=TRUE, jobTitle="Agriculture"){
me <- list(currentJob = hasJob, jobTitle = "Agriculture")
class(me) <- append(class(me), "North American") 	
return(me) 
}
ex1 <- isjob(hasJob = TRUE, jobTitle = "Agriculture")
ex1
ex1$currentJob
otype(ex1)

ex2 <- list(name ="Hunter", job_no = 123456789,
          wage = 14, weekly_hours = 27)
class(ex2)<-"job"
ex2

#3. S4 Examples
setClass("Job_Info", slots = list(name = "character", age = "numeric", role = "character"))
ex3 <- new("Job_Info", name = "Hunter", age = 19, role = "Intern")
otype(ex3)
ex3@name

setClass("School_Info", slots = list(name = "character", age = "numeric", year = "character", school = "character"))
ex4 <- new("School_Info", name = "Hunter", age = 19, year = "Sophomore", school = "USF")
otype(ex4)
ex4@school