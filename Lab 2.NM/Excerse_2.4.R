#1. Identify the columns with missing values in the Titanic dataset.
titanic <- read.csv("titanic.csv")
colSums(is.na(titanic))

#2. Replace missing Age values with the median Age.
titanic$Age[is.na(titanic$Age)] <- median(titanic$Age, na.rm = TRUE)

#3. Drop rows where Embarked is missing.
titanic <- titanic[!is.na(titanic$Embarked) & titanic$Embarked != "", ]

#4. For Lung Capacity dataset, fill missing values of LungCap with the mean LungCap.
library(readxl)
lungcap <- read_excel("LungCap_Dataset.xls")
lungcap$LungCap[is.na(lungcap$LungCap)] <- mean(lungcap$LungCap, na.rm = TRUE)

#5. Difference between methods to handle missing data:

#Listwise deletion: Removes any row with at least one missing value.

#Pairwise deletion: Uses all available data for each analysis; only ignores missing values in the specific calculation.

#Mean/median imputation: Replaces missing values with the mean or median of that column.