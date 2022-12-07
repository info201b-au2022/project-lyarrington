library(shiny)
library(plotly)

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
#    plotlyOutput("graph_3")
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