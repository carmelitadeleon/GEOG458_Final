library(shiny)
library(leaflet)

source("server.R")
source("text.R")
source("timeseries.R")

exportTp <- append("All", levels(interactvData$abbreviatn))

ui <- fluidPage(
  tags$style(type = "text/css", "
             .irs-bar {width: 100%; height: 25px; background: black; border-top: 1px solid black; border-bottom: 1px solid black;}
             .irs-bar-edge {background: black; border: 1px solid black; height: 25px; border-radius: 0px; width: 20px;}
             .irs-line {border: 1px solid black; height: 25px; border-radius: 0px;}
             .irs-grid-text {font-family: 'arial'; color: white; bottom: 17px; z-index: 1;}
             .irs-grid-pol {display: none;}
             .irs-max {font-family: 'arial'; color: black;}
             .irs-min {font-family: 'arial'; color: black;}
             .irs-single {color:black; background:#6666ff;}
             .irs-slider {width: 700px; height: 100px; top: 22px;}
             "),
  uiOutput("testSlider")
)

shinyUI(fluidPage(
  theme = "bootstrap.css",
  tags$h1(class = "display-4", "Exports in the United States"),
  tags$h5("By Kevin, Jin, Alisha, Carmelita, and Billy"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        condition = "input.tabs == 'Welcome!'"
        
      ),
      conditionalPanel(
        condition = "input.tabs == 'Data'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Values'",
        
        h3("Overview"),
        HTML(evOverview),
        
        h3("Analysis"),
        HTML(evAnalysis)
      ),
      conditionalPanel(
        condition = "input.tabs == 'Export Type'",
        selectInput("exportType",
                    h3("Please select the export type: "),
                    choices = exportTp),
        
        h3("Overview"),
        HTML(prodOverview),
        
        h3("Analysis"),
        HTML(prodAnalysis),
        
        h3("Search Export Product"),
        textOutput("hsCode"),
        HTML("<p><br>For more information regarding this export
             please look up the HS code <a href='https://www.foreign-trade.com/reference/hscode.htm'>here</a>
             </p>")
      ),
      conditionalPanel(
        condition = "input.tabs == 'LQ'",
        h3("Overview"),
        HTML(lqOverview),
        h3("Analysis"),
        HTML(lqAnalysis),
        HTML(footer_lq)
      ),
      conditionalPanel(
        condition = "input.tabs == 'Temporal'",
        # Sidebar panel that contains a two number inputs for adjusting the minimum and 
        # maximum year used in the map
        sliderInput(inputId = "test", label = h4("Year Range"), min = 2014, 
                    max = 2017, value = 2014, step = 1, sep =""),
        h3("Overview"),
        HTML(tempOverview),
        h3("Analysis"),
        HTML(tempAnalysis)
      ),
      conditionalPanel(
        condition = "input.tabs == 'Bibliography'"
      )
    ),
    
    # Tabs show a plot of the generated distribution and data overview
    mainPanel(
      tabsetPanel(id = "tabs",
                  tabPanel("Welcome!",
                           h3("Introduction"),
                           HTML(intro),
                           HTML(intro2),
                           HTML(intro3),
                           HTML(footer_intro)),
                  tabPanel("Data",
                           h3("Overview"),
                           HTML(dataOverview),
                           h3("Limitations"),
                           HTML(dataAnalysis),
                           h3("Data Processing"),
                           HTML(dataProcess),
                           HTML(footer_data)),
                  tabPanel("Export Values",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 15em'>
                                <font size= '5'>United States Export Values</font></p>"),
                           leafletOutput("freqMap", width="720px",height="680px")
                  ),
                  tabPanel("Export Type",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 14em'>
                                <font size= '5'>United States Exporting Products</font></p>"),
                           leafletOutput("exportMap", width = "720px", height="1000px"),
                           HTML(prodfooter_intro)
                  ),
                  tabPanel("LQ",
                           img(src = "lqmap.png", height = 600, width = 720)),
                  tabPanel("Temporal",
                           HTML("<p align= 'left' style='padding: 1em 7em 0em 18em'>
                                <font size= '5'>United States Production Values</font></p>"),
                           # Show a usa state map of yearly exports with high airline productions
                           plotOutput("yearMap", width = "850px", height = "620px")
                  ),
                  tabPanel("Bibliography",
                           h3("Maps"),
                           tags$ul(class="cite",
                                   HTML(interactvBib),
                                   HTML(timeseriesBib),
                                   HTML(staticBib)
                           ),
                           h3("Shiny"),
                           tags$ul(class="cite",
                                   HTML(serverBib),
                                   HTML(uiBib),
                                   HTML(txtBib)
                           ),
                           h3("Data"),
                           tags$ul(class="cite",
                                   HTML(pythonBib),
                                   HTML(dataBib)
                           )
                  )
                  
      )
    )
  )
)
)
