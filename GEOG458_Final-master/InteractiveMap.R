#required libraries
library(tidyverse)
library(leaflet)
#install.packages("randomcoloR")
library(randomcoloR)

# Creates an interactive leaflet map that provides the user with the ability to
# highlight polygons as well as learn more about each area through a popup.
# Parameters:
#   data: the shapefile
#   lat: latitude
#   long: longitude
#   measure: the value we are measuring
#   txt1: display first value of information
#   popTitle: displays title of txt2 information
#   txt2: displays second value of information
#   txt3: displays third value of information
#   measureTitle: legend title
#   bin: legend value scale
CreateInteractvMap <- function(data, lat, long, measure, txt1, popTitle, txt2, txt3, measureTitle, bin) {
  # Check that the bin is empty and create a random distinct color palette accordingly
  if (!is.null(bin)) {
    pal <- colorBin(palette = "Purples", domain = measure, bins = bin)
  } else {
    pal <- colorFactor(distinctColorPalette(24), domain = measure)
  }
  
  # Create a Leaflet map
  leaflet() %>% 
    addProviderTiles("Esri.WorldGrayCanvas") %>%
    setView(lat = lat, lng = long, zoom = 3) %>%
    addPolygons(data = data,
                opacity = 1,
                weight = 2,
                dashArray = "3",
                color = "grey",
                fillOpacity = 0.7,
                fillColor = ~pal(measure),
                popup = paste("<b>State:</b> ", txt1, "<br>",
                              popTitle, txt2, "<br>",
                              "<b>2017 Share Value:</b> ", txt3, "<br>"),
                highlightOptions = highlightOptions(weight = 4, bringToFront = TRUE, opacity = 1,
                                                    color = "blue", sendToBack = TRUE)) %>%
    addLegend(position = "bottomright", pal = pal, values = measure,
              title = measureTitle,
              opacity = 1)
}

