library(shiny)

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
        condition = "input.tabs == 'INSERT'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'INSERT2'"
      ),
      conditionalPanel(
        condition = "input.tabs == 'Bibliography'"
      )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel("Welcome!"),
        tabPanel("INSERT"),
        tabPanel("INSERT2"),
        tabPanel("Bibliography")
      )
    )
  )
))
