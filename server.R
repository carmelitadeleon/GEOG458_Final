library(shiny)
library(sf)
library(leaflet)

# supress warning messages
suppressWarnings(warnings)

#include other necessary files
source("staticMap.R")
source("InteractiveMap.R")

interactvData <- st_read("./data/interactive.shp")

shinyServer(function(input, output) {
  output$freqMap <- renderLeaflet({
    CreateInteractvMap(interactvData, 43.82, -118.58,interactvData$State_Tota, interactvData$NAME,
                       "Export Commodity :", interactvData$abbreviatn, interactvData$share17,
                       "U.S. Export Value (Millions of $)", c(0, 9317, 22306, 38701, 77914,
                                                              265000)) %>%
      return()
  })
  
  output$exportMap <- renderLeaflet({
    CreateInteractvMap(interactvData, 18.43, -119.58, interactvData$abbreviatn, interactvData$NAME, "2017 Value: ",
                       interactvData$val2017, interactvData$share17,
                       "U.S. Export Commodity", NULL) %>%
      return()
  })
})


