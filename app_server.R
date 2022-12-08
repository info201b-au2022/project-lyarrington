library(plotly)

server <- function(input, output) {
    output$graph_1 <- renderPlotly({
        plot_ly(x = ~rnorm(100), y = ~rnorm(100)) #Placeholder
    })
    output$graph_2 <- renderPlotly({
        plot_ly(x = ~rnorm(100), y = ~rnorm(100)) #Placeholder
    })
    output$graph_3 <- renderPlotly({
        graph_3 <- plot_AQI_Chart(input$timeRange[1], input$timeRange[2])
    })
}