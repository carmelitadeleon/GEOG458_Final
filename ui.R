library(shiny)
library(leaflet)

source("server.R")
source("text.R")

exportTp <- append("All", levels(interactvData$abbreviatn))

shinyUI(fluidPage(
  theme = "bootstrap.css",
  tags$h1(class = "display-4", "Exports in the United States"),
  tags$h5("By Kevin, Jin, Alisha, Carmelita, and Billy"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        condition = "input.tabs == 'Export Values'",
        
        h3("Overview"),
        tags$div(class="about",
                 tags$p(evOverview)
        )
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Type'",
        selectInput("exportType",
                    h3("Please select the export type: "),
                    choices = exportTp),
        
        h3("Overview"),
        tags$div(class="about",
                 tags$p(prodOverview)
        ),
        
        h3("Search Export Product"),
        textOutput("hsCode"),
        tags$div(class="lookup",
                 tags$p(HTML("<br>"), "For more information regarding this export please look up the HS code",
                        tags$a(href='https://www.foreign-trade.com/reference/hscode.htm', "here")
                 )
        )
      ),
      conditionalPanel(
        condition = "input.tabs == 'LQ'",
        HTML("<br><p>For more information regarding this export please look up the hs code 
             <a href='https://www.foreign-trade.com/reference/hscode.htm'>here</a></p>")
      ),
      conditionalPanel(
        condition = "input.tabs == 'LQ'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Temporal'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Bibliography'"
      )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(id = "tabs",
                  tabPanel("Welcome!"),
                  tabPanel("Export Values",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 15em'>
                                <font size= '5'>United States Export Values</font></p>"),
                           leafletOutput("freqMap", width="720px",height="680px")
                  ),
                  tabPanel("Export Type",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 14em'>
                                <font size= '5'>United States Export Products</font></p>"),
                           leafletOutput("exportMap", width = "720px", height="1000px")
                  ),
                  tabPanel("LQ",
                           img(src = "lqmap.png", height = 600, width = 720)),
                  tabPanel("Temporal"),
                  tabPanel("Bibliography")
      )
    )
  )
))
