###############################################################################
# MAIN APPLICATION
###############################################################################


# Libraries required
library(shiny)
library(shinyjs)
library(shinythemes)
library(shinydashboard)
suppressPackageStartupMessages(library(googleVis))


# Load directory 
setwd("~/")
dir <- paste(getwd(), "/R/Programas/Shiny/OAIES/OAIES", sep = "")


# Lunch app
runApp(dir)
