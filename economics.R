data("economics")

head(economics)

ggplot(data = economics, aes(x = date, y = pop)) + geom_point(aes(color = pce, shape = psavert))


# In this dataset, we plot the date and population, and styles in using the pce (color) and shape as psavert

