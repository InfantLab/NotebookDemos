packages <- c('shiny', 'ggvis')
new.packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(shiny)
require('ggvis')
source('utils.R')

regions <- get_regions()

fluidPage(
  titlePanel("Gapminder Shiny"),
  sidebarLayout(
    sidebarPanel(
      selectInput("Region", "Region", regions, selected=regions, multiple=TRUE),
      sliderInput("year", "year:", 1960, 2014, 1,
                  step = 1, animate=
                    animationOptions(interval=250, loop=TRUE))
    ),
    mainPanel(
      ggvisOutput("ggvis")
    )
  )
)