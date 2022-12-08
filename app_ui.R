library(shiny)
library(plotly)
<<<<<<< HEAD
source("AQI_Category_Chart.R")
=======
source("source/AQI_Category_Chart.R")
>>>>>>> 8bc331a5c222044faff06b14a36a46a50b0d1c42

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
<<<<<<< HEAD
    plotlyOutput(plot_AQI_Category)
=======
    plotlyOutput("graph_3"),
    sliderInput("timeRange",
                label = h5("Select your time range"),
                min = 2013,
                max = 2021,
                value = c(2013, 2021)),
    hr()
>>>>>>> 8bc331a5c222044faff06b14a36a46a50b0d1c42
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