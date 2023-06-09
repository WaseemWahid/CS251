library(ggplot2)

df <- mtcars

print(head(df))

pl <- ggplot(data=df, aes(factor(cyl), mpg))

print(pl + geomboxplot() + coord_flip())

