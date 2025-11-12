#1. Write R code to:
#   - Load a CSV file (dataset_Facebook.csv) into a dataframe.
facebook <- read.csv("dataset_Facebook.csv")

#   - Load an Excel file (LungCap_Dataset.xls) into a dataframe.
library(readxl)
lungcap <- read_excel("LungCap_Dataset.xls")

#   - Load a text file separated by commas.
text_data <- read.table("data.txt", sep = ",", header = TRUE)

#2. Display the first 10 rows of each dataset using head().
head(facebook, 10)
head(lungcap, 10)
head(text_data, 10)

#3. Check the data type of each column in the Titanic dataset.
titanic <- read.csv("titanic.csv")
str(titanic)

#4. Save the Titanic dataset into a new CSV file after filtering only passengers who survived.
titanic_survived <- titanic[titanic$Survived == 1, ]
write.csv(titanic_survived, "titanic_survived.csv", row.names = FALSE)
