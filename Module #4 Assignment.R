# The 5 variables:
freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,.3,0.4,0.9,0.2)
bloodp <- c(103,87,32,43,59,109,78,205,135,178)
first <- c(1,1,1,1,0,0,0,0,NA,1)
second <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)

# Create a data frame of the variables
hospital.df <- data.frame(freq, bloodp, first, second, finaldecision)

# Create boxplots
hospital.boxplot <- boxplot(hospital.df)
bloodpressureplot <- boxplot(hospital.df$bloodp)
assessmentplot <- boxplot(hospital.df$freq, hospital.df$first, hospital.df$second, hospital.df$finaldecision, ylim = c(0,1))

#Create histograms
hospital.hist <- hist(hospital.df$bloodp, breaks = 10, xlim = c(0, 250))
decision.hist <- hist(hospital.df$finaldecision, breaks = 10)
finaldecision.mean <- mean(hospital.df$finaldecision)

