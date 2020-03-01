install.packages("tidyverse")
library(plumber)

p <- plumber::plumb('pumpler.R')
p$run(port = 8888)