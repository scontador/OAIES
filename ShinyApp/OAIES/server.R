###############################################################################
# SERVER
###############################################################################


# Libraries required
library(shiny)
library(shinyjs)
library(shinythemes)
library(shinydashboard)
suppressPackageStartupMessages(library(googleVis))


# load data
dir <- paste(getwd(), "/data/repositories.csv", sep = "") 
frame <- read.csv(dir)

dir <- paste(getwd(), "/data/countries.csv", sep = "") 
frame2 <- read.csv(dir)


# Main Server
server <- function(input, output, session) {
        
        output$table <- renderDataTable(
                
                if(length(input$show) > 0) {
                        
                        if(length(input$show) == 1) {
                                
                                options = list(scrollX = TRUE)
                                frame <- data.frame(frame[,input$show])
                                names(frame) <- input$show
                                frame
                                
                        } else {
                                
                                options = list(scrollX = TRUE)
                                frame[,input$show]
                                
                        }
                        
                } else {
                        
                        NULL
                        
                }
                
        )
        
        output$plot <- renderGvis({
                
                option <- list( projection = "kavrayskiy-vii")
                country <- frame2$Country
                number.documet <- rep(1, length(frame2$Country))
                WorldCountries <- data.frame(Country = country, NumberDocs = number.documet)
                gvisGeoChart(WorldCountries, locationvar = "Country", options = option)
                
        })
        
}

