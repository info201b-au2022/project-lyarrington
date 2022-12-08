library(shiny)
library(plotly)
source("source/AQI_Category_Chart.R")

intro_tab <- tabPanel(
    title = "Introduction"
)

graph_1_tab <- tabPanel(
    title = "Graph 1",
#    plotlyOutput("graph_1")
)

graph_2_tab <- tabPanel(
    title = "Graph 2",
#    plotlyOutput("graph_2")
)

graph_3_tab <- tabPanel(
    title = "Graph 3",
    plotlyOutput("graph_3"),
    sliderInput("timeRange",
                label = h5("Select your time range"),
                min = 2013,
                max = 2021,
                value = c(2013, 2021)),
    hr()
)

summary_tab <- tabPanel(
    title = "Summary"
)

report_tab <- tabPanel(
    title = "Report"
)

ui <- navbarPage(
    title = "China Air Quality Index",
    intro_tab,
    graph_1_tab,
    graph_2_tab,
    graph_3_tab,
    summary_tab,
    report_tab
)