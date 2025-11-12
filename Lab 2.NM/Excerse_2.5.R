#1. Draw a histogram of Age (Titanic dataset).
titanic <- read.csv("titanic.csv")
hist(titanic$Age, main = "Histogram of Age", xlab = "Age", col = "lightblue", breaks = 20)

#2. Create a bar chart of Pclass vs. count of passengers.
barplot(table(titanic$Pclass), main = "Passengers by Pclass", xlab = "Pclass", ylab = "Count", col = "orange")

#3. Plot a boxplot of LungCap by Gender.
library(readxl)
lungcap <- read_excel("LungCap_Dataset.xls")
boxplot(LungCap ~ Gender, data = lungcap, main = "Lung Capacity by Gender", xlab = "Gender", ylab = "Lung Capacity", col = c("pink", "lightgreen"))

#4. In Facebook dataset:
facebook <- read.csv("dataset_Facebook.csv")

#   - Create a scatter plot of Likes vs Comments.
plot(facebook$Like, facebook$Comment, main = "Likes vs Comments", xlab = "Likes", ylab = "Comments", col = "blue", pch = 16)

#   - Create a histogram of Shares.
hist(facebook$Share, main = "Histogram of Shares", xlab = "Shares", col = "purple", breaks = 20)

#5. For Titanic dataset, use a pie chart to show the proportion of survivors vs non-survivors.
survival_table <- table(titanic$Survived)
pie(survival_table, labels = c("Did Not Survive", "Survived"), main = "Proportion of Survivors", col = c("red", "green"))
