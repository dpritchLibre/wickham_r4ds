library(tidyverse)




# section 3.2.4 ----------------------------------------------------------------

# q1
ggplot(data = mpg)

#q2
dim(mpg)

# q3
help(mpg)

# q4
ggplot(data = mpg) + geom_point(mapping = aes(x = cyl, y = hwy))

# q5
ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = class))




# section 3.3.1 ----------------------------------------------------------------

# q1
# `color` should be an argument to `geom_point`, not to `aes`
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# q2
help(mpg)

# q3
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy), color = "blue")
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy), size = 2)
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy), shape = 18)

# q4
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = hwy))

# q5 `size` is size of inside with color `fill`, and stroke is size of
# outside with color `color`
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy),
                                shape   = 23,
                                size    =  2,
                                stroke  =  4,
                                color   = "blue",
                                fill    = "red")

# q6
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy, color = displ < 5))
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy, color = rep(1:3, length.out = nrow(mpg))))




# section 3.5.1 ----------------------------------------------------------------

# page 15

# q1
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_wrap(~ cty, nrow = 2)

# q2
# it means that there are cross-tabulations in the particular cell

# q3
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(drv ~ .)

ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(. ~ cyl)

# q4
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_wrap(~ class, nrow = 2)

# q5
# nrow and ncol specify the number of rows and columns for each of the sub-
# graphs

# q6
