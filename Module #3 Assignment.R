#The three data sets
Name <- c('Jeb', 'Donald', 'Ted', 'Marco', 'Carly', 'Hillary', 'Berine')

ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)

CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

#Create dataframe
ElectionResults <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results)
ElectionResults
