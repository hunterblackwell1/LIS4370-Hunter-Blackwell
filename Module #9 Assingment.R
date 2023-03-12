# Import dataset
library(readr)
nbaplayers <- read_csv("nba_players_19.csv")
View(nbaplayers)

# Basic visualization
plot(nbaplayers$height, nbaplayers$number, col = "blue", main = "NBA Players Height by Number", xlab = "Height (in)", ylab = "Number")

# Lattice visualization
library(lattice)
xyplot(number ~ height, data = nbaplayers, pch = ".", cex = 4, main = "NBA Players Height by Number", xlab = "Height (in)", ylab = "Number")

# ggplot visualization
library(ggplot2)
ggplot(nbaplayers, aes(x = height, y = number)) + geom_point(aes(color = position)) + labs(title = "NBA Players Height by Number", x = "Height (in)", y = "Number")
