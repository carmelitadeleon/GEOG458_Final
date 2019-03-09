#required libraries
library(tidyverse)
library(leaflet)
#install.packages(randomcoloR)
library(randomcoloR)


CreateInteractvMap <- function(data, lat, long, measure, txt1, popTitle, txt2, txt3, measureTitle, bin) {
  # Check that the bin is empty and create a palette accordingly
  if (!is.null(bin)) {
    pal <- colorBin(palette = "Blues", domain = measure, bins = bin)
  } else {
    pal <- colorFactor(distinctColorPalette(24), domain = measure)
  }
  
  # Create a Leaflet map
  leaflet(data) %>% 
    addProviderTiles("CartoDB.DarkMatter") %>%
    setView(lat = lat, lng = long, zoom = 3) %>%
    addPolygons(data = data,
                opacity = 1,
                weight = 2,
                dashArray = "3",
                color = "grey",
                fillOpacity = 0.7,
                fillColor = ~pal(measure),
                popup = paste("Region: ", txt1, "<br>",
                              popTitle, txt2, "<br>",
                              "2017 Share Value: ", txt3, "<br>"),
                highlightOptions = highlightOptions(weight = 4, bringToFront = TRUE, opacity = 1,
                                                    color = "blue", sendToBack = TRUE)) %>%
    addLegend(position = "bottomright", pal = pal, values = measure,
              title = measureTitle,
              opacity = 1)
}

