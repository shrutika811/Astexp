Dataset<-read.csv("C:/Users/Lenovo/Downloads/data-main/data-main/Dataset.csv")
View(Dataset)
Dataset$Age = ifelse(is.na(Dataset$Age), ave(Dataset$Age, FUN = function (x)mean(x, na.rm = TRUE)),Dataset$Age)
Dataset$Salary = ifelse(is.na(Dataset$Salary),
                        ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)),
                        Dataset$Salary)
Dataset$Salary = ifelse(is.na(Dataset$Salary),
                        ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)),
                        Dataset$Salary)
Dataset$Country = factor(Dataset$Country,
                         levels = c('France','Spain','Germany'),
                         labels = c(1.0, 2.0 , 3.0 ))
Dataset$Purchased = factor(Dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0, 1))
Dataset$Purchased[is.na(Dataset$Purchased)] <- 0
as.factor(Dataset$Purchased)

install.packages("caTools")
library(caTools)# required library for data splition
set.seed(123)
split = sample.split(Dataset$Purchased, SplitRatio = 0.8)# returns true if observation goesto the Training set and false if observation goes to the test set.
#Creating the training set and test set separately
training_set = subset(Dataset, split == TRUE)
test_set = subset(Dataset, split == FALSE)
training_set
test_set

training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])
training_set
test_set


# Horizontal Bar Plot for
# Ozone concentration in air
barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', horiz = TRUE)
# Vertical Bar Plot for
# Ozone concentration in air
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col ='blue', horiz = FALSE)
# Histogram for Maximum Daily Temperature
data(airquality)
hist(airquality$Temp, main ="La Guardia Airport's\
Maximum Temperature(Daily)",
     xlab ="Temperature(Fahrenheit)",
     xlim = c(50, 125), col ="yellow",
     freq = TRUE)
# Box plot for average wind speed
data(airquality)
boxplot(airquality$Wind, main = "Average wind speed\
at La Guardia Airport",
        xlab = "Miles per hour", ylab = "Wind",
        col = "orange", border = "brown",
        horizontal = TRUE, notch = TRUE)
# Multiple Box plots, each representing
# an Air Quality Parameter
boxplot(airquality[, 0:4],
        main ='Box Plots for Air Quality Parameters')
# Adding Titles and Labeling Axes to Plot
cone <- function(x, y){
  sqrt(x ^ 2 + y ^ 2)
}
# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)

