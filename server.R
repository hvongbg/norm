shinyServer(
function(input, output, session){
  
  output$myPlot <- renderPlot({
    
    distType <- input$Distribution
    size <- input$sampleSize
    
    if(distType == "Normal"){
      randomVec <- rnorm(size, mean = as.numeric(input$mean), sd = as.numeric(input$SD))
    }
    else{
      randomVec <- rexp(size, rate = 1/ as.numeric(input$lamda))
    }
    
    hist(randomVec, col = "blue")
  })
  
}
  )