library(rgdal)
library(maps)
#install.packages("tmap")
#install.packages("tmaptools")
#install.packages("gganimate")
library(tmap)
library(tmaptools)
library(dplyr)

library(ggplot2)
library(gganimate)
library(sf)
library(plotly)

# usa base map
usa <- st_read("data/cb_2017_us_state_500k.shp")
#top states with civic aircrafts dataframe
#air_crafts <- st_read("data/Static.shp")

MakeYearGraph <- function(aircraft_data_reformed) {
  states <- map_data("state")
  p <- ggplot() + geom_polygon( data=states, aes(x=long, y=lat, group = group),colour="white", fill="grey" )
  
  # Create a ggplot map
  map <- p +
    geom_point(aes(x = long, y = lat, size = measurement),
               data = aircraft_data_reformed,
               colour = 'blue', alpha = 1) +
    scale_size_continuous(range = c(5, 40),
                          breaks = c(250, 500, 1000, 3000, 5000, 10000, 30000)) +
    scale_x_continuous(limits = c(-125, -67))+
    scale_y_continuous(limits = c(25, 50))+
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) + 
    labs(size = 'AirCraft Engines & Parts')
  return(map)
}