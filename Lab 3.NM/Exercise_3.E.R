#Compute the Pearson correlation between mpg and hp.
data(mtcars)
cor(mtcars$mpg, mtcars$hp, method = "pearson")

#Plot a scatterplot with regression line of mpg ~ hp.
plot(mtcars$hp, mtcars$mpg, main = "Scatterplot of MPG vs HP", xlab = "Horsepower", ylab = "Miles per Gallon", pch = 19, col = "blue")
abline(lm(mpg ~ hp, data = mtcars), col = "red", lwd = 2)

#Create a correlation matrix for all numeric columns in mtcars.
cor(mtcars)

#Compute and interpret the Spearman rank correlation between Sepal.Length and Petal.Length.
data(iris)
cor(iris$Sepal.Length, iris$Petal.Length, method = "spearman")

#Perform association rule mining (using arules package) on a small market basket dataset.
library(arules)
transactions <- as(split(c("Milk", "Bread", "Butter", "Jam", "Eggs"), c(1, 2, 3, 4, 5)), "transactions")
rules <- apriori(transactions, parameter = list(supp = 0.001, conf = 0.1))
inspect(rules)

