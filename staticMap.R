require(rgdal)
require(ggplot2)
# install.packages("tmap")
# install.packages("tmaptools)
library(tmap)
library(tmaptools)

# read in the usa and data shape file
usa <- read_shape(
  "data/cb_2017_us_state_500k.shp", as.sf = TRUE, stringsAsFactors = FALSE)
location_q <- read_shape(
  "data/Static.shp", as.sf = TRUE, stringsAsFactors = FALSE)

# creates a map displaying the united states and the location 
# quotient values of the top 18 states
state_data <- ggplot() + geom_sf(data = usa, fill = "gray", na.rm = TRUE) +
  geom_sf(data = location_q, fill = "blue", na.rm = TRUE)
