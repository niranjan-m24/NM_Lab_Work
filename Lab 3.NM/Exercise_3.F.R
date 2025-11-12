#Niranjan Muley Exercise 3.F
# Titanic Dataset – Logistic Regression
# Load dataset
library(titanic)
titanic <- read.csv("titanic.csv")

# Convert categorical variables
titanic$Sex <- as.factor(titanic$Sex)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)

# Fit logistic regression model
model_logit <- glm(Survived ~ Age + Sex + Pclass, data = titanic, family = binomial)

# Summary of model
summary(model_logit)

# Compute odds ratios
exp(coef(model_logit))

# Interpretation: 
# If odds ratio > 1 → increases survival probability
# If odds ratio < 1 → decreases survival probability


# Iris Dataset – Linear Regression
# Load dataset
data(iris)

# Fit linear regression model
model_lm <- lm(Petal.Length ~ Sepal.Length, data = iris)

# Summary of model
summary(model_lm)

# Plot fitted line + residuals
plot(iris$Sepal.Length, iris$Petal.Length, 
     main = "Linear Regression: Petal.Length ~ Sepal.Length",
     xlab = "Sepal Length", ylab = "Petal Length", pch = 19, col = "darkcyan")
abline(model_lm, col = "red", lwd = 2)
plot(model_lm$residuals, main = "Residuals", ylab = "Residuals", pch = 19, col = "purple")


# mtcars Dataset – K-Means Clustering
# Load dataset
data(mtcars)

# Select variables
df <- mtcars[, c("mpg", "hp", "wt")]

# Scale data
df_scaled <- scale(df)

# Apply K-means clustering (k = 3)
set.seed(123)
km <- kmeans(df_scaled, centers = 3, nstart = 25)

# Add cluster labels
mtcars$cluster <- as.factor(km$cluster)

# View cluster summary
table(mtcars$cluster)

# Visualize clusters
library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg, color = cluster, size = wt)) +
  geom_point(alpha = 0.8) +
  labs(title = "K-Means Clustering (k=3)", x = "Horsepower", y = "Miles per Gallon") +
  theme_minimal()
