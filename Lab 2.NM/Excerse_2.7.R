#3. Write R code:
titanic <- read.csv("titanic.csv")

#   - Compute Q1, Q3, and IQR for Fare (Titanic dataset).
Q1_fare <- quantile(titanic$Fare, 0.25, na.rm = TRUE)
Q3_fare <- quantile(titanic$Fare, 0.75, na.rm = TRUE)
IQR_fare <- IQR(titanic$Fare, na.rm = TRUE)

#   - Define lower and upper bounds
lower_fare <- Q1_fare - 1.5 * IQR_fare
upper_fare <- Q3_fare + 1.5 * IQR_fare

#   - Count passengers with Fare outside this range
sum(titanic$Fare < lower_fare | titanic$Fare > upper_fare, na.rm = TRUE)

#4. Do the same for Age in the Titanic dataset.
Q1_age <- quantile(titanic$Age, 0.25, na.rm = TRUE)
Q3_age <- quantile(titanic$Age, 0.75, na.rm = TRUE)
IQR_age <- IQR(titanic$Age, na.rm = TRUE)

lower_age <- Q1_age - 1.5 * IQR_age
upper_age <- Q3_age + 1.5 * IQR_age

sum(titanic$Age < lower_age | titanic$Age > upper_age, na.rm = TRUE)

#   - Replace outliers with nearest boundary value (capping)
titanic$Age[titanic$Age < lower_age] <- lower_age
titanic$Age[titanic$Age > upper_age] <- upper_age

#5. For the Lung Capacity dataset:
library(readxl)
lungcap <- read_excel("LungCap_Dataset.xls")

Q1_lc <- quantile(lungcap$LungCap, 0.25, na.rm = TRUE)
Q3_lc <- quantile(lungcap$LungCap, 0.75, na.rm = TRUE)
IQR_lc <- IQR(lungcap$LungCap, na.rm = TRUE)

lower_lc <- Q1_lc - 1.5 * IQR_lc
upper_lc <- Q3_lc + 1.5 * IQR_lc

# Detect outliers
outliers_lc <- lungcap$LungCap < lower_lc | lungcap$LungCap > upper_lc
sum(outliers_lc)

# Compare average Lung Capacity before and after removal
mean(lungcap$LungCap, na.rm = TRUE)
lungcap_no_outliers <- lungcap[!outliers_lc, ]
mean(lungcap_no_outliers$LungCap, na.rm = TRUE)

#Difference between Boxplots vs IQR method:
#Boxplots visually show potential outliers as points outside whiskers; the IQR method provides exact numerical bounds for detecting outliers.

#When to remove vs cap outliers:
#Remove: When extreme values are errors or will distort analysis.
#Cap: When extreme values are valid but need to limit their influence (e.g., for normalization or modeling).