library(ggplot2)
library(ggplot2movies)


df <- movies<-movies[sample(nrow(movies), 1000), ]

# print(head(df))

pl <- ggplot(df,aes(x=rated))

pl2 <- pl _ geom_histogram(binwidth=0.1, aes(fill=..count..) + xlab('Movie Ratings') + ylab('Occurances')

print(pl2 + scale_fill_gradient('Count', low='blue', high='red'))
    