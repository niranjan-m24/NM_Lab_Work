#1. Load the Adult dataset into R.
adult <- read.csv("adult.csv")

#2. Display the first 10 rows.
head(adult, 10)

#3. Find the structure of the dataset.
str(adult)

#4. Find the average age of all individuals.
mean(adult$age, na.rm = TRUE)

#5. Count how many individuals earn >50K and how many earn <=50K.
table(adult$income)

#6. Find the most common occupation.
names(sort(table(adult$occupation), decreasing = TRUE))[1]

#7. Calculate the average hours-per-week for people earning >50K vs <=50K.
aggregate(hours.per.week ~ income, data = adult, mean)

#8. Create a bar chart showing the distribution of education levels.
barplot(table(adult$education), main = "Distribution of Education Levels", xlab = "Education", ylab = "Count", las = 2, col = "skyblue")

#9. Find which native country has the highest percentage of people earning >50K.
country_income <- prop.table(table(adult$native.country, adult$income), 1)
top_country <- names(which.max(country_income[, ">50K"]))
top_country
