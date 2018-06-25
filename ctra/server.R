##################################################################
#
# TITLE: Clinical Trial Recruitment Accelerator (CTRA)
#
# DESCRIPTION: The server.R script
#
# AUTHOR: Curry W. Hilton
#
# LAST UPDATED: 6/25/2018 
#
##################################################################

# required libraries and custom functions

library(shiny)
library(shinythemes)
library(ggplot2)
library(dplyr)
library(plotly)

##################################################################

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
})
