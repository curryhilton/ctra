##################################################################
#
# TITLE: Clinical Trial Recruitment Accelerator (CTRA)
#
# DESCRIPTION: The ui.R script
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

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application Theme
  theme = shinytheme("flatly"),
  
  # Application title
  titlePanel(title = div(img(src="UNC_HealthCare.jpg",
                height = 100, width = 200), "Clinical Trial Recruitment Accelerator")),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
