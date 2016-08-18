prd <- function(a,b) a

library(shiny)
library(HistData)
data(Galton)

shinyServer(
  function(input, output){
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$odate <- renderPrint({input$date})
    output$op <- renderPrint({prd(input$id1, input$id2)})
    
    output$newHist <- renderPlot({
    hist(Galton$child, xlab='Height', col='lightblue', main='Histogram')
    mu <- input$mu
    lines(c(mu,mu), c(0,200), col="red", lwd=5)
    mse <- mean((Galton$child-mu)^2)
    text(65,150, paste("mu=",mu))
    text(65,160, paste("mse=",mse))
    }
      
    )
  }
)