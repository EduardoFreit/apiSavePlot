library(ggplot2movies)
library(ggplot2)
library(dplyr)

dados <- movies %>% 
  filter(!is.na(budget), budget > 0) %>% 
  select(title, year, budget, rating) %>% 
  arrange(desc(year))

savePlot <- function(){
  dev.copy(png,'myplot.png')
  dev.off()
}

#* @get /plot
plotar <- function(){
  print(ggplot(data = dados) + 
    geom_point(mapping = aes(x = budget, y = rating, color = year)))
  savePlot()
}
#oi