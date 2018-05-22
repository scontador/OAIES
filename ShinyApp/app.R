

# Libraries required
library(shiny)
library(shinyjs)
library(shinythemes)
library(shinydashboard)
suppressPackageStartupMessages(library(googleVis)) # for plot-1, plot-2



# Load directory 
setwd("~/")
dir <- paste(getwd(), "/R/Programas/Shiny/OAIES/OAIES", sep = "")


# Lunch app
runApp(dir)






