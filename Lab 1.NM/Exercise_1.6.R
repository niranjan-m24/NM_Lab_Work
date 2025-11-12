#1. Load the IPL dataset into R.
ipl <- read.csv("ipl.csv")

#2. Display the first 10 rows.
head(ipl, 10)

#3. Find the top 5 players with the highest total runs.
head(ipl[order(ipl$Runs, decreasing = TRUE), c("Player", "Runs")], 5)

#4. Find the player with the highest batting average.
ipl[which.max(ipl$Average), c("Player", "Average")]

#5. Create a bar chart for the top 10 players by strike rate.
top_strike <- head(ipl[order(ipl$StrikeRate, decreasing = TRUE), c("Player", "StrikeRate")], 10)
barplot(top_strike$StrikeRate, names.arg = top_strike$Player, las = 2, col = "orange", main = "Top 10 Players by Strike Rate", ylab = "Strike Rate")

#6. Find the correlation between matches played and runs scored.
cor(ipl$Matches, ipl$Runs)
