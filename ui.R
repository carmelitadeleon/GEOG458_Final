library(shiny)
library(leaflet)

source("server.R")

exportTp <- append("All", levels(interactvData$abbreviatn))

shinyUI(fluidPage(
  tags$h1(class = "display-4", "Exports in the United States"),
  tags$h5("By Kevin, Jin, Alisha, Carmelita, and Billy"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        condition = "input.tabs == 'Welcome!'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Frequency'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Type'",
        selectInput("exportType",
                    h3("Please select the export type: "),
                    choices = exportTp)
      ),
      conditionalPanel(
        condition = "input.tabs == 'LQ'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Bibliography'"
      )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(id = "tabs",
        tabPanel("Welcome!"),
        tabPanel("Export Frequency",
                 leafletOutput("freqMap", width="720px",height="680px")
        ),
        tabPanel("Export Type", 
                 leafletOutput("exportMap", width = "720px", height="1000px")
        ),
        tabPanel("LQ",
                 img(src = "lqmap.png", height = 600, width = 720)),
        tabPanel("Bibliography")
      )
    )
  )
))
