#Niranjan Muley Exrrcise 3.C
#Construct a 95% confidence interval for the mean of mpg.
data(mtcars)
t.test(mtcars$mpg, conf.level = 0.95)

#Use bootstrapping (boot package) to estimate CI for hp (horsepower).
library(boot)
boot_mean <- function(data, indices) {
  mean(data[indices])
}
results <- boot(data = mtcars$hp, statistic = boot_mean, R = 1000)
boot.ci(results, type = "bca")

#Compare confidence intervals of mpg for automatic vs manual cars (am variable).
t.test(mpg ~ am, data = mtcars, conf.level = 0.95)
