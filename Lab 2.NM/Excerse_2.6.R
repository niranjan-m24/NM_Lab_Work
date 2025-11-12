#1. Using the Titanic dataset:
titanic <- read.csv("titanic.csv")

#   - Create a boxplot of Fare and visually identify potential outliers.
boxplot(titanic$Fare, main = "Boxplot of Fare", ylab = "Fare", col = "lightblue")

#   - Create a boxplot of Age separated by Survived.
boxplot(Age ~ Survived, data = titanic, main = "Age by Survived", xlab = "Survived", ylab = "Age", col = c("red", "green"))

#   - Which group (Survived/Not Survived) has more spread in ages?
#     (Visually from the boxplot, look at IQR and whiskers. Survived group usually shows more spread.)

#2. Using the Facebook dataset:
facebook <- read.csv("dataset_Facebook.csv")

#   - Create a boxplot of Likes and identify extreme posts.
boxplot(facebook$Like, main = "Boxplot of Likes", ylab = "Likes", col = "orange")

#   - Draw a combined boxplot of Likes, Shares, and Comments side by side.
boxplot(facebook$Like, facebook$Share, facebook$Comment,
        names = c("Likes", "Shares", "Comments"),
        main = "Facebook Metrics Comparison", col = c("lightblue", "lightgreen", "pink"))

#   - Which metric has the highest variation?
#     (Visually, the metric with the largest IQR and whiskers has the highest variation.)
