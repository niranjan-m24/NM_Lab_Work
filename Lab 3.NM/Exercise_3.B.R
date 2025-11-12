#Niranjan Muley Exercise 3.B
#Plot a normal distribution curve with mean = mean of Sepal.Length and sd = sd of Sepal.Length.
data(iris)
x <- seq(min(iris$Sepal.Length), max(iris$Sepal.Length), length.out = 100)
y <- dnorm(x, mean = mean(iris$Sepal.Length), sd = sd(iris$Sepal.Length))
plot(x, y, type = "l", col = "blue", lwd = 2, main = "Normal Distribution of Sepal.Length", xlab = "Sepal Length", ylab = "Density")

#Perform a Shapiro–Wilk test to check if Sepal.Length follows a normal distribution.
shapiro.test(iris$Sepal.Length)

#Simulate 1000 samples from a binomial distribution (n = 10, p = 0.5) and plot its histogram.
set.seed(100)
binom_samples <- rbinom(1000, size = 10, prob = 0.5)
hist(binom_samples, main = "Binomial Distribution (n=10, p=0.5)", xlab = "Number of Successes", col = "lightblue", border = "black")

#Compare the sample mean and variance with theoretical values for the binomial distribution.
sample_mean <- mean(binom_samples)
sample_variance <- var(binom_samples)
theoretical_mean <- 10 * 0.5
theoretical_variance <- 10 * 0.5 * 0.5
sample_mean
sample_variance
theoretical_mean
theoretical_variance
