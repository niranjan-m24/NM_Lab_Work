#1. Rename the columns of Titanic dataset to lowercase.
titanic <- read.csv("titanic.csv")
colnames(titanic) <- tolower(colnames(titanic))
head(titanic)

#2. Sort the Titanic dataset by Age in descending order.
titanic_sorted <- titanic[order(-titanic$age), ]
head(titanic_sorted)

#3. Create a new column in Titanic dataset AgeGroup:
titanic$agegroup <- cut(
  titanic$age,
  breaks = c(-Inf, 11, 18, 59, Inf),
  labels = c("Child", "Teen", "Adult", "Senior")
)
head(titanic[, c("age", "agegroup")])

#4. Calculate mean Fare by Pclass and Survived status.
aggregate(fare ~ pclass + survived, data = titanic, mean)

#5. From Facebook dataset, group posts by Type (e.g., Photo, Link, Status) and compute average likes.
facebook <- read.csv("dataset_Facebook.csv")
aggregate(Like ~ Type, data = facebook, mean, na.rm = TRUE)
