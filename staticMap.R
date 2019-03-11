require(rgdal)
require(ggplot2)
# install.packages("tmap")
# install.packages("tmaptools)
library(tmap)
library(tmaptools)
library(dplyr)

# read in the usa and data shape file
usa <- st_read("data/cb_2017_us_state_500k.shp")
location_q <- st_read("data/Static.shp")

# filter to 48 states, the other 4 states are not needed
usa_48 <- usa %>%
    filter(!(NAME %in% c("Alaska", "District of Columbia", "Hawaii", "Puerto Rico")))
lq_48 <- location_q %>%
  filter(!(NAME %in% c("Alaska", "District of Columbia", "Hawaii", "Puerto Rico")))

# creates a map displaying the united states and the location 
# quotient values of the top 18 states
states_data <- ggplot(data = lq_48) + 
  geom_sf(data = usa_48, fill = "gray", na.rm = TRUE) +
  geom_sf(aes(fill = LQ)) +
  coord_sf(xlim = c(-128, -65), ylim = c(20, 55), expand = FALSE) + 
  ggtitle("Location Quotient of Civilian Aircraft Exports, by state, 2017")

# since this is a static map, it is okay to export the map as a png
lq_map <- ggsave("www/lqmap.png", plot = states_data, height = 7, width = 9)
