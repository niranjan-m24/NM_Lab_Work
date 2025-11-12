#Niranjan Muley Additional Exercise_3.A
#Calculate mean, median, mode, variance, standard deviation, and range of the mpg column.
data(mtcars)
mean(mtcars$mpg)
median(mtcars$mpg)
mode_mpg <- as.numeric(names(sort(table(mtcars$mpg), decreasing = TRUE))[1])
mode_mpg
var(mtcars$mpg)
sd(mtcars$mpg)
range(mtcars$mpg)

#Create a frequency table of the number of cylinders (cyl).
table(mtcars$cyl)

#Generate a histogram of mpg and overlay a density curve.
hist(mtcars$mpg, main = "Histogram of MPG with Density Curve", xlab = "Miles per Gallon", col = "skyblue", border = "black", freq = FALSE)
lines(density(mtcars$mpg), col = "red", lwd = 2)

#Create a boxplot of mpg by cyl and interpret the spread.
boxplot(mpg ~ cyl, data = mtcars, main = "MPG by Number of Cylinders", xlab = "Cylinders", ylab = "Miles per Gallon", col = c("lightgreen", "lightblue", "orange"))

#Use summary() to produce a descriptive statistics report of the dataset.
summary(mtcars)

