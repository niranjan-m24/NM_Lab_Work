#Niranjan Muley Exercise 3.D
#Perform a one-sample t-test: Is the mean Sepal.Length significantly different from 5.5?
data(iris)
t.test(iris$Sepal.Length, mu = 5.5)

#Perform a two-sample t-test: Is there a significant difference in mpg between automatic and manual cars?
data(mtcars)
t.test(mpg ~ am, data = mtcars)


#Conduct a chi-square test of independence: Are Survived and Sex independent in the Titanic dataset?
titanic <- read.csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")
table_data <- table(titanic$Survived, titanic$Sex)
chisq.test(table_data)


#Perform a one-way ANOVA: Compare Sepal.Length means across the 3 iris species.
anova_model <- aov(Sepal.Length ~ Species, data = iris)
summary(anova_model)

#Apply a post-hoc Tukey HSD test after ANOVA and interpret.
TukeyHSD(anova_model)
