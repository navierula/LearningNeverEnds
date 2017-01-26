# Currently learning the basics of R from Code School
# http://tryr.codeschool.com/levels/1/challenges/3

# Basics and Bools
1 + 1
"Navie"
2 * 3
2 + 2 == 4

# variable assignments
x <- 42
x <- "Navie"
x <- TRUE

# sum function
sum(1, 2, 3)

# repeat function
rep("Bye!", times = 2)

# square root
sqrt(16)

# create vector, all values inside must be SAME type
# if not, they will be converted to same type
c(4, 5, 6)
c("a", "b", "c")

# vector with a sequence
# start:end
5:9
seq(5, 9)
# specify range
seq(5, 9, 0.5)
# opposite way
9:5

# indexing, starts at 1
sentence <- c("walk", "me", "home")
# retrieve a range
sentence[1:2]
# setting a range
sentence[1:3] <- c("take", "me", "away")
sentence[3]

# assign names to 3-item vector
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
# ranks["first"] = 1

# bar plotting
runawayPups <- c(4, 5, 1)
barplot(runawayPups)

# add names for pups (as labels)
names(runawayPups) <- c("Mark", "Tom", "Travis")
barplot(runawayPups)

# plot 100 values!
barplot(1:100)

# you can add 1 to every value in the vector
a <- c(1, 2, 3)
a + 1
# and divide
a / 2

# you can add two vectors together

b <- c(4, 5, 6)
a + b

# comparison: TRUE FALSE FALSE
# <, >, or ==
a == c(1, 7, 8)

# get sin of vals
sin(a)

# scatter plot, vectors x and y
x <- seq(1, 20, 0.1)
y <- sin(x)
plot(x, y)

values <- -10:10
absolutes <- abs(values)
plot(values, absolutes)

# remove NA (null) arguments for sum
sum(a, na.rm = TRUE)

# matrices
# create a matrix with all 0s, 3 rows, and 4 columns
matrix(0, 3, 4)

a <- 1:12
print(a)
# matrix now has numbers 1 - 12, ordered vertically
matrix(a, 3, 4)

