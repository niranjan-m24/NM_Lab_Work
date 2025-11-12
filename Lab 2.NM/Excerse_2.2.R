#1. From the Titanic dataset:
titanic <- read.csv("titanic.csv")

#   - Select only the columns Name, Sex, Age, and Survived.
titanic_selected <- titanic[, c("Name", "Sex", "Age", "Survived")]
titanic_selected

#   - Show passengers older than 50.
titanic[titanic$Age > 50, ]

#   - Count the number of survivors in each passenger class (Pclass).
table(titanic$Pclass[titanic$Survived == 1])

#2. From the Facebook dataset:
facebook <- read.csv("dataset_Facebook.csv")

#   - Find the post with the maximum number of likes.
facebook[which.max(facebook$Like), ]

#   - Calculate the average number of shares per post.
mean(facebook$Share, na.rm = TRUE)

#   - Create a new column Engagement = Likes + Comments + Shares.
facebook$Engagement <- facebook$Like + facebook$Comment + facebook$Share
head(facebook)

#3. Using the Lung Capacity dataset:
library(readxl)
lungcap <- read_excel("LungCap_Dataset.xls")

#   - Select children below age 12.
lungcap_under12 <- lungcap[lungcap$Age < 12, ]
lungcap_under12

#   - Group by Gender and calculate average Lung Capacity.
aggregate(LungCap ~ Gender, data = lungcap_under12, mean)

#   - Find the child with the maximum Lung Capacity.
lungcap_under12[which.max(lungcap_under12$LungCap), ]
