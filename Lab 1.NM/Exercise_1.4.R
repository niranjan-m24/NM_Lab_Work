# Niranjan Muley Lab4 Exercise

#1. Write a function add_numbers(a, b) to return the sum of two numbers.
add_numbers <- function(a, b) {
  a + b
}

#2. Write a function square(n) to return the square of a number.
square <- function(n) {
  n * n
}

#3. Write a function to calculate the factorial of a number using recursion.
factorial_recursive <- function(n) {
  if (n < 0) return(NA)
  if (n <= 1) return(1)
  n * factorial_recursive(n - 1)
}

#4. Write a function to check if a number is prime.
is_prime <- function(num) {
  if (num != floor(num) || num < 2) return(FALSE)
  if (num == 2) return(TRUE)
  if (num %% 2 == 0) return(FALSE)
  limit <- floor(sqrt(num))
  if (limit < 3) return(TRUE)
  for (i in seq(3, limit, by = 2)) {
    if (num %% i == 0) return(FALSE)
  }
  TRUE
}

#5. Write a function that takes a vector and returns:
#   1. Mean
#   2. Median
#   3. Standard Deviation
vector_stats <- function(vec) {
  vec <- as.numeric(vec)
  vec <- vec[!is.na(vec)]
  list(
    mean = mean(vec),
    median = median(vec),
    sd = sd(vec)
  )
}

#6. Write a function that accepts a data frame and a column name, and returns the top 5 highest values in that column.
top5_values <- function(df, column) {
  x <- df[[column]]
  x <- x[!is.na(x)]
  head(sort(x, decreasing = TRUE), 5)
}
