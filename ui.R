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
        condition = "input.tabs == 'Welcome'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Data'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Values'",
        
        h3("Overview"),
        tags$div(class="about",
                 tags$p(evOverview)
        ),
        
        h3("Analysis"),
        tags$div(class="analysis",
                 tags$p(evAnalysis))
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
        
        h3("Analysis"),
        tags$div(class="analysis",
                 tags$p(prodAnalysisP1,
                        tags$p(tags$a(href="https://www.flexport.com/data/hs-code/880000-civilian-aircraft-engines-and-parts",
                                      "FlexPort"),
                               prodAnalysisP2,
                               tags$a(href="https://www.cbsa-asfc.gc.ca/publications/dm-md/d10/d10-17-41-eng.pdf",
                                      "(Canada Border Services Agency)")
                        )
                 )
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
        h3("Overview"),
        HTML(lqOverview),
        h3("Analysis"),
        HTML(lqAnalysis)
        
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
                  tabPanel("Data",
                           h3("Overview"),
                           h3("Data Processing")),
                  tabPanel("Export Values",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 15em'>
                                <font size= '5'>United States Export Values</font></p>"),
                           leafletOutput("freqMap", width="720px",height="680px")
                  ),
                  tabPanel("Export Type",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 14em'>
                                <font size= '5'>United States Exporting Products</font></p>"),
                           leafletOutput("exportMap", width = "720px", height="1000px")
                  ),
                  tabPanel("LQ",
                           img(src = "lqmap.png", height = 600, width = 720)),
                  tabPanel("Temporal"),
                  tabPanel("Bibliography",
                           h3("Maps"),
                           tags$div(class="cite",
                                    tags$p(interactvBib),
                                    tags$a(href="https://github.com/carmelitadeleon/GEOG458_Final/blob/master/InteractiveMap.R",
                                           "InteractiveMap.R")
                           ),
                           h3("Shiny"),
                           tags$div(class="cite",
                                    tags$p(serverBib),
                                    tags$a(href="https://github.com/carmelitadeleon/GEOG458_Final/blob/master/server.R",
                                           "Server.R"),
                                    tags$p(uiBib),
                                    tags$a(href="https://github.com/carmelitadeleon/GEOG458_Final/blob/master/ui.R",
                                           "UI.R"),
                                    tags$p(txtBib),
                                    tags$a(href="https://github.com/carmelitadeleon/GEOG458_Final/blob/master/text.R",
                                           "Text.R")
                           ),
                           h3("Data"),
                           tags$div(class="cite",
                                    tags$p(pythonBib),
                                    tags$a(href="https://github.com/carmelitadeleon/GEOG458_Final/blob/master/Data_Processing.ipynb",
                                           "Data_Processing.ipynb")
                           )
                           
                  )
      )
    )
  )
))
