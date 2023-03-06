#1. Read in dataset
grades <- read.table("Assignment6Dataset.txt", header = TRUE, sep = ",")

#2. Install package and find the mean for sex
install.packages("plyr")
library(plyr)
student.average <- ddply(grades, "Sex", transform, Grade.Average = mean(Grade))

#3. Convert dataset to a dataframe and create a file
write.table(student.average, "Students_Average")

#4. Create csv
write.table(student.average, "Students_Average", sep = ",")

#5. Filter for i
filter.i <- subset(grades, grepl("i", grades$Name))
filter.i
write.table(filter.i, "Filter_I", sep = ",")
