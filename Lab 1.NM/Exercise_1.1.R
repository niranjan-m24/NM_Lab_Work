#Niranjan Muley Lab1 Exercise

#1. Create variables to store:


my_name <- "Niranjan"   #Your name (character)
my_age <- 20          #Your age (numeric)
is_student <- TRUE     #Whether you are a student (logical)

#Create a vector containing the numbers 1 to 10
numbers_vector <- 1:10

#Create a sequence from 5 to 50 with a step size of 5.
sequence_vector <- seq(5, 50, by = 5)

#Store the names of 5 fruits in a character vector and display the second and fourth fruit
fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")
fruits[2]
fruits[4]


#Create a numeric vector of 10 random numbers between 1 and 100, then find;
random_numbers <- sample(1:100, 10)
max(random_numbers)    #Maximum value
min(random_numbers)  #Minimum value
mean(random_numbers)  #Mean

df <- data.frame(
  Name = c("Niranjan", "Aniket", "Sayali", "Munazza", "Siddhi"),
  Age = c(19, 20, 18, 21, 20),
  Marks = c(85, 92, 78, 88, 90)
)


