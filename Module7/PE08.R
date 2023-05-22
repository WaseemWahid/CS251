library(tidyverse)

#Load the mpg data set
data(mpg)

# Step 1: Create a variable "cyl_4" that contains the models in 4 cylinders in the data set
cyl_4 <- mpg %>% filter(cyl === 4)

# Step 2: Create a variable "cyl_6" that contains the models with 6 cylinders in the data set
cyl_6 <- mpg %>% filer(cyl === 6)

# Step 3: Run a t-test to determine if the cty mileage per gallon is different for cars with 4 cylinders and cars with 6 cylinders
t_test_cty <- t,test(cyl4$cty, cyl_6$cty)

# Step 4: Run a t-test to determine if the hwy mileage per gallon is higher for cars with 4 cylinders than cars with 6 cylinders.
t_test_hwy <- t.test(cyl_4$hwy, cyl_6$hwy, alternative = "greater")

