#Operators in R
#1. Perform the following operations:
10 + 5
10 - 5
10 * 5
10 / 5
10 %% 3
10 %/% 3

#2. Compare if 15 is greater than 10, and if 7 is equal to 7.
15 > 10
7 == 7

#3. Create two vectors:
a <- c(2, 4, 6, 8)
b <- c(1, 3, 5, 7)

#   Perform:
a + b
a - b
a * b

#4. Use logical operators to check:
a > 5
b <= 4

#5. Use %in% to check if the number 5 exists in vector a.
5 %in% a

#6. Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(TRUE, TRUE, FALSE, FALSE)

x & y
x | y
!x

#Loops in R
#1. Write a for loop to print numbers from 1 to 10.
for(i in 1:10){
  print(i)
}

#2. Write a while loop to sum numbers from 1 to 100.
sum_val <- 0
i <- 1
while(i <= 100){
  sum_val <- sum_val + i
  i <- i + 1
}
sum_val

#3. Write a loop to print only even numbers between 1 and 50.
for(i in 1:50){
  if(i %% 2 == 0){
    print(i)
  }
}

#4. Write a loop to print the multiplication table of 7.
for(i in 1:10){
  print(paste("7 x", i, "=", 7*i))
}

#5. Create a loop to calculate the factorial of a given number n.
n <- 5
fact <- 1
for(i in 1:n){
  fact <- fact * i
}
fact

