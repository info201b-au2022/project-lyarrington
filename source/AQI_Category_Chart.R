library(readr)
library(dplyr)
library(scales)
library(ggplot2)
Shanghai <- read.csv("data/Shanghai_PM2.5_2013-2021.csv")
Shanghai <- subset(Shanghai, Site != 'Site')
Shenyang <- read.csv("data/Shenyang_PM2.5_2013-2021.csv")
Shenyang <- subset(Shenyang, Site != 'Site')
Guangzhou <- read.csv("data/Guangzhou_PM2.5_2013-2021.csv")
Guangzhou <- subset(Guangzhou, Site != 'Site')
Beijing <- read.csv("data/Beijing_PM2.5_2013-2021.csv")
Beijing <- subset(Beijing, Site != 'Site')

<<<<<<< HEAD
=======

>>>>>>> 243705a83a2fa7d8522301fe778a1cd2a46fd360
generate_shanghai_data <- function(time1, time2) {
  Shanghai_modified <- Shanghai %>%
    filter(Year >= time1 & Year <= time2)
  Shanghai_modified <- c("Good" = 
                           sum(Shanghai_modified$AQI.Category == "Good"),
                         "Moderate" = 
                           sum(Shanghai_modified$AQI.Category == "Moderate"),
                         "Unhealthy for Sensitive Groups" = 
                           sum(Shanghai$AQI.Category == "Unhealthy for Sensitive Groups"),
                         "Unhealthy" = 
                           sum(Shanghai_modified$AQI.Category == "Unhealthy"),
                         "Very Unhealthy" = 
                           sum(Shanghai_modified$AQI.Category == "Very Unhealthy"))
  Shanghai_modified <- round(Shanghai_modified/sum(Shanghai_modified), digits=4)
  return(Shanghai_modified)
}

generate_shenyang_data <- function(time1, time2) {
  Shenyang_modified <- Shenyang %>%
    filter(Year >= time1 & Year <= time2)
  Shenyang_modified <- c("Good" = 
                           sum(Shenyang_modified$AQI.Category == "Good"), 
                         "Moderate" = 
                           sum(Shenyang_modified$AQI.Category == "Moderate"), 
                         "Unhealthy for Sensitive Groups" = 
                           sum(Shenyang_modified$AQI.Category == "Unhealthy for Sensitive Groups"), 
                         "Unhealthy" = 
                           sum(Shenyang_modified$AQI.Category == "Unhealthy"), 
                         "Very Unhealthy" = 
                           sum(Shenyang_modified$AQI.Category == "Very Unhealthy"))
  Shenyang_modified <- round(Shenyang_modified/sum(Shenyang_modified), digits=4)
  return(Shenyang_modified)
}

generate_beijing_data <- function(time1, time2) {
  Beijing_modified <- Beijing %>%
    filter(Year >= time1 & Year <= time2)
  Beijing_modified <- c("Good" = 
                          sum(Beijing_modified$AQI.Category == "Good"), 
                        "Moderate" = 
                          sum(Beijing_modified$AQI.Category == "Moderate"), 
                        "Unhealthy for Sensitive Groups" = 
                          sum(Beijing_modified$AQI.Category == "Unhealthy for Sensitive Groups"), 
                        "Unhealthy" = 
                          sum(Beijing_modified$AQI.Category == "Unhealthy"), 
                        "Very Unhealthy" = 
                          sum(Beijing_modified$AQI.Category == "Very Unhealthy"))  
  Beijing_modified <- round(Beijing_modified/sum(Beijing_modified), digits=4)
  return(Beijing_modified)
}

generate_guangzhou_data <- function(time1, time2) {
  Guangzhou_modified <- Guangzhou %>%
    filter(Year >= time1 & Year <= time2)
  Guangzhou_modified <- c("Good" = 
                            sum(Guangzhou_modified$AQI.Category == "Good"), 
                          "Moderate" = 
                            sum(Guangzhou_modified$AQI.Category == "Moderate"), 
                          "Unhealthy for Sensitive Groups" = 
                            sum(Guangzhou_modified$AQI.Category == "Unhealthy for Sensitive Groups"), 
                          "Unhealthy" = 
                            sum(Guangzhou_modified$AQI.Category == "Unhealthy"), 
                          "Very Unhealthy" = 
                            sum(Guangzhou_modified$AQI.Category == "Very Unhealthy"))  
  Guangzhou_modified <- round(Guangzhou_modified/sum(Guangzhou_modified), digits=4)
  return(Guangzhou_modified)
}

Shanghai <- subset(Shanghai, select = c(Year, Month, Day, AQI.Category))
Shanghai_modified <- generate_shanghai_data(2013, 2021)

<<<<<<< HEAD
Shanghai <- subset(Shanghai, select = c(Year, Month, Day, AQI.Category))
Shanghai_modified <- generate_shanghai_data(2013, 2021)

Shenyang <- subset(Shenyang, select = c(Year, Month, Day, AQI.Category))
Shenyang_modified <- generate_shenyang_data(2013, 2021)


Beijing <- subset(Beijing, select = c(Year, Month, Day, AQI.Category))
Beijing_modified <- generate_beijing_data(2013, 2021)
  
  
Guangzhou <- subset(Guangzhou, select = c(Year, Month, Day, AQI.Category))
Guangzhou_modified <- generate_guangzhou_data(2013, 2021)



plot_AQI_Chart <- function(time1, time2) {
  Beijing_modified <- generate_beijing_data(time1, time2)
  Guangzhou_modified <- generate_guangzhou_data(time1, time2)
  Shanghai_modified <- generate_shanghai_data(time1, time2)
  Shenyang_modified <- generate_shenyang_data(time1, time2)
  
  City <- c(rep("Shanghai", 5), rep("Shenyang", 5), rep("Guangzhou", 5), rep("Beijing", 5))
  Quality <- rep(c("Healthy", "Moderate", "Unhealthy for Sensitive Groups", "Unhealthy", "Very Unhealthy"), 4)
  Percent <- c(Shanghai_modified, Shenyang_modified, Beijing_modified, Guangzhou_modified)
  
  my_chart <- data.frame(City, Quality, Percent)
  plot <- ggplot(my_chart,
            aes(y = Percent, x = City, fill = Quality)) +
            geom_bar(position = "fill", stat = "identity") +
            scale_fill_manual(values = c("dark green", "green", "yellow", "orange", "red"))
  return(plot)
}




=======
Shenyang <- subset(Shenyang, select = c(Year, Month, Day, AQI.Category))
Shenyang_modified <- generate_shenyang_data(2013, 2021)
>>>>>>> 243705a83a2fa7d8522301fe778a1cd2a46fd360


Beijing <- subset(Beijing, select = c(Year, Month, Day, AQI.Category))
Beijing_modified <- generate_beijing_data(2013, 2021)
  
  
Guangzhou <- subset(Guangzhou, select = c(Year, Month, Day, AQI.Category))
Guangzhou_modified <- generate_guangzhou_data(2013, 2021)

plot_AQI_Chart <- function(time1, time2) {
  Beijing_modified <- generate_beijing_data(time1, time2)
  Guangzhou_modified <- generate_guangzhou_data(time1, time2)
  Shanghai_modified <- generate_shanghai_data(time1, time2)
  Shenyang_modified <- generate_shenyang_data(time1, time2)
  
  City <- c(rep("Shanghai", 5), rep("Shenyang", 5), rep("Guangzhou", 5), rep("Beijing", 5))
  Quality <- rep(c("Healthy", "Moderate", "Unhealthy for Sensitive Groups", "Unhealthy", "Very Unhealthy"), 4)
  Percent <- c(Shanghai_modified, Shenyang_modified, Beijing_modified, Guangzhou_modified)
  
  my_chart <- data.frame(City, Quality, Percent)
  plot <- ggplot(my_chart,
            aes(y = Percent, x = City, fill = Quality)) +
            geom_bar(position = "fill", stat = "identity") +
            scale_fill_manual(values = c("dark green", "green", "yellow", "orange", "red"))
  plotly <- p2 <- ggplotly(plot) %>% layout(height = 500, width = 700)
  return(plotly)
}