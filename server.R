library(shiny)
library(sf)
library(leaflet)

# supress warning messages
suppressWarnings(warnings)

#include other necessary files
source("InteractiveMap.R")

interactvData <- st_read("./data/interactive.shp")

shinyServer(function(input, output) {
  # Output the export frequency map
  output$freqTitle <- renderText({
    "United States Export Values"
  })
  
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

