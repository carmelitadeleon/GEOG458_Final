library(shiny)
library(sf)
library(leaflet)

# supress warning messages
suppressWarnings(warnings)

#include other necessary files
source("InteractiveMap.R")

interactvData <- st_read("./data/interactive.shp")

air_crafts <- st_read("data/Static.shp")
lat <- c(	39.063946, 	41.597782, 	33.040619, 	33.856892, 	35.565342, 	37.668140, 	34.969704, 	38.526600, 	33.729759, 	43.452492, 	35.630066, 	36.116203, 	44.268543, 	47.400902, 	40.388783, 	27.766279)
long <- c(	-76.802101, 	-72.755371, 	-83.643074, 	-80.945007, 	-96.928917, 	-84.670067, 	-92.373123, 	-96.726486, 	-111.431221, 	-71.563896, 	-79.806419, 	-119.681564, 	-89.616508, 	-121.490494, 	-82.764915, 	-81.686783)
coord <- data.frame(lat,long)
any(sapply(coord, is.infinite))
air_crafts$lat <- coord$lat
air_crafts$long <- coord$long
colnames(air_crafts)[which(names(air_crafts) == "val2014")] <- 2014
colnames(air_crafts)[which(names(air_crafts) == "val2015")] <- 2015
colnames(air_crafts)[which(names(air_crafts) == "val2016")] <- 2016
colnames(air_crafts)[which(names(air_crafts) == "val2017")] <- 2017
aircrafts_longForm <- gather(air_crafts, yearly, measurement, "2014":"2017", factor_key=TRUE)

shinyServer(function(input, output) {
  
  # Create a point to point line graph with the selected year range
  output$yearMap <- renderPlot({
    filter.by.year <- aircrafts_longForm %>%
      filter(yearly == toString(input$test))
    MakeYearGraph(filter.by.year)
  })
  
  # Output the export frequency map
  output$freqMap <- renderLeaflet({
    CreateInteractvMap(interactvData, 43.82, -118.58,interactvData$State_Tota, interactvData$NAME,
                       "<b>Export Commodity:</b>", interactvData$abbreviatn, interactvData$share17,
                       "U.S. Export Value (Millions of $)", c(0, 9317, 22306, 38701, 77914,
                                                              265000)) %>%
      return()
  })
  
  # Output the export type map
  output$exportMap <- renderLeaflet({
    if (input$exportType != "All") {
      filterExport <- interactvData %>%
        filter(abbreviatn == input$exportType)
    } else {
      filterExport <- interactvData
    }
    
    CreateInteractvMap(filterExport, 18.43, -119.58, filterExport$abbreviatn, filterExport$NAME, "<b>2017 Value:</b> ",
                       filterExport$val2017, filterExport$share17,
                       "U.S. Export Commodity", NULL) %>%
      return()
  })
  
  # Output the corresponding hs code
  output$hsCode <- renderText({
    code <- NULL
    if (input$exportType != "All") {
      code <- interactvData %>%
        filter(abbreviatn == input$exportType) %>%
        select(hs6)
      
      code <- unique(code$hs6)
      return(paste("The harmonized system code for ", input$exportType, " is: ", code))
    } else {
      return()
    }
  })
})

