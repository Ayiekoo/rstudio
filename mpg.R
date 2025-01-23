library(ggplot2)

data("mpg")

head(mpg)

ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point(aes(color = trans)) + labs(x = "Displacement", y = "HWY MPG")

# this is a scatter plot of the displacement against highway speed of vehicles
# it's styled with th transmission as the color