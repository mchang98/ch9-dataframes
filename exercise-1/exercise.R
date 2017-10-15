# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
scores <- c(9, 12, 27, 46)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
scores.against <- c(17, 8, 33, 18)

# Combine your two vectors into a dataframe
score.table <- data.frame(scores, scores.against, stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points
score.table$diff <- score.table$scores - score.table$scores.against

# Create a new column "won" which is TRUE if the Seahawks wom
score.table$won <- score.table$scores > score.table$scores.against

# Create a vector of the opponents
opponents <- c('Packers', '49ers','Titans', 'Colts')

# Assign your dataframe rownames of their opponents
row.names(score.table) <- opponents

