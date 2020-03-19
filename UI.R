shinyUI(
  pageWithSidebar(
    headerPanel("Normen"),
    
    sidebarPanel(
      selectInput("Distribution", "Please select",
                  choices = c("Normal", "Exponential")),
      sliderInput("sampleSize", "Please select size: ",
                  min = 100, max = 5000, value = 100, step = 100),
        conditionalPanel(condition = "input.Distribution == 'Normal'", 
                       textInput("mean", "Please select the mean", 10),
                       textInput("SD", "Please select sd", 3)),
        conditionalPanel(condition ="input.Distribution == 'Exponential'",
                       textInput("lamda", "please seldct: ", 1))
    ),
    
    mainPanel(
      plotOutput("myPlot")
    )
    
  )
  
  
  
  
  
  
)