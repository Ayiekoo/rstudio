data("airquality")

head(airquality)

# Now, let's check the list of the rows and columns
# We use the function ---dim---

dim(airquality)  ## This code produces the dimensions of the dataset

# Let's get the names of the columns in the dataset

names(airquality)

colnames(airquality)

boxplot(airquality, xlab="Variables", ylab="Measurements")

## The code below compares the plotting of temperature from column 4

par(mfrow = c(1,2))
hist(airquality[,4])
with(airquality, hist(Temp))


# Let's plot the temperatures separately for each month
with(airquality, boxplot(Temp ~ Month))

# Let's do a scatter plot of the Ozone vs. Temp

with(airquality, plot(Ozone ~ Temp))
