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

# 2 rows, 4 columns, eights!
eight <- 1:8
dim(eight) <- c(2,4)
print(eight)
# accessing the matrix by row and col
eight[2, 3]
# reassign value
eight[2, 3] <- 0
# get whole row
eight[2, ]
# get whole col
eight[, 2]
# all rows, certain columns
eight[, 2:4]

# plotting matrices
elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
contour(elevation)
persp(elevation)
persp(elevation, expand = 0.2)

contour(volcano)
persp(volcano, expand = 0.2)
# heat map
image(volcano)

# statistics
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')

# get mean
mean(limbs)
barplot(limbs)
# draw line at the mean in the plot
abline(h = mean(limbs))

# get median, draw line in plot
median(limbs)
abline(h = median(limbs))

pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
barplot(pounds)
meanValue <- mean(pounds)
# standard deviation
deviation <- sd(pounds)
# show two lines
abline( h = meanValue + deviation)

chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
# factors group items by uniqueness
types <- factor(chests)
# label as ints
as.integer(types)
# print unique item
levels(types)

# new plot types and labeling
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)

plot(weights, prices, pch=as.integer(types))
# create legend
legend("topright", c("gems","gold","silver"), pch=1:3)
legend("topright", levels(types), pch=1:length(levels(types)))

# create dataframe
treasure <- data.frame(weights, prices, types)

# access columns by index or word
treasure[[2]]
treasure[["prices"]]
# or...
treasure$prices




