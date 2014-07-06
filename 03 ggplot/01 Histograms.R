ggplot(data = diamonds) # Gives an error
ggplot(data = diamonds) + geom_histogram(aes(x = carat, fill = "white"))
ggplot(data = diamonds) + geom_density(aes(x = carat), fill = "grey50")
