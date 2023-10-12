

read.csv("C:/Users/sydwi/Downloads/movie_genres.csv")

library(dplyr)
install.packages("tidyverse")
library(tidyverse)

####What is the top 5 movie genres in the database

my_data <- read.csv("C:/Users/sydwi/Downloads/movie_genres.csv")

head(my_data)

movie_count <- 

top_movies <- my_data %>%
  group_by(genre) %>%
  summarise(movie_count = n()) %>%
  filter(movie_count >= 3)

view(movie_count)

top_movies <- top_movies %>%
  arrange(desc(movie_count))

top_movies


install.packages("ggplot2")
library(ggplot2)





ggplot(top_movies, aes(x = genre, y = movie_count, fill = genre)) + 
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Genres with 3 or More Movies", 
       x = "genre",
       y = "count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)
  )
