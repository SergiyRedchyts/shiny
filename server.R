#
# This peer assessed assignment for Coursera 'Developing Data Products' module. 
# The objective is to create a Shiny application and deploy it on Rstudio's servers.
#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# 
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
        
        # Combine the selected variables into a new data frame
        selectedData <- reactive({
                mtcars  [, c(input$xcol, input$ycol)]
        })
        
        clusters <- reactive({
                kmeans(selectedData(), input$clusters)
        })
        
        output$plot1 <- renderPlot({
                palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
                          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
                
                par(mar = c(5.1, 4.1, 0, 1))
                plot(selectedData(),
                     col = clusters()$cluster,
                     pch = 20, cex = 3)
                points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
        })
        
})