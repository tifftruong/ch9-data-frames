# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
grants <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- grants$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean <- mean(grants$total_amount)
#2600196.6

# What was the dollar amount of the largest grant?
largest_amount <- max(grants$total_amount)
#100000000

# What was the dollar amount of the smallest grant?
smallest_amount <- min(grants$total_amount)
#5000

# Which organization received the largest grant?
largest_organization <- organization[grants$total_amount == largest_amount]
#Hillsborough County Public Schools

# Which organization received the smallest grant?
smallest_organization <- organization[grants$total_amount == smallest_amount]
#New Mexico Business Roundtable for Educational ...

# How many grants were awarded in 2010?
length(grants$total_amount[grants$start_year == 2010])
#18
