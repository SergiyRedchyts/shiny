#
# This peer assessed assignment for Coursera 'Developing Data Products' module. 
# The objective is to create a Shiny application and deploy it on Rstudio's servers.
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# 

library(shiny)
library(markdown)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
        headerPanel('mtcars k-means clustering'),
        sidebarPanel(
                selectInput('xcol', 'X Variable', names(mtcars )),
                selectInput('ycol', 'Y Variable', names(mtcars ),
                            selected=names(mtcars )[[2]]),
                numericInput('clusters', 'Cluster count', 3,
                             min = 1, max = 9)
        ),
        mainPanel(
                plotOutput('plot1'),
                includeMarkdown("README.html")
        )
))