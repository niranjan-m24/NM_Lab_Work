
#Conditions in R
#1. Write an if statement to check if a number is positive or negative.
num <- -5
if(num > 0){
  print("Positive")
} else {
  print("Negative")
}

#2. Write an if-else statement to check if a given number is even or odd.
num <- 7
if(num %% 2 == 0){
  print("Even")
} else {
  print("Odd")
}

#3. Write a program to check if a given year is a leap year.
year <- 2024
if((year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0)){
  print("Leap Year")
} else {
  print("Not a Leap Year")
}

#4. Take a numeric input for marks and print:
marks <- 35
if(marks >= 40){
  print("Pass")
} else {
  print("Fail")
}

#5. Using nested if-else, assign grades:
marks <- 82
if(marks >= 90){
  print("A")
} else if(marks >= 75){
  print("B")
} else if(marks >= 60){
  print("C")
} else {
  print("Fail")
}
