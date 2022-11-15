# Load libraries
rm(list = ls())
library(dplyr)
library(ggplot2)
library(tidyr)
library(data.table)  

#Load data
file_path <- list.files(path = "data/",pattern = ".csv", full.names = TRUE)
df_combine <- lapply(file_path, fread, sep=",")
df <- rbindlist(df_combine)

getmode <- function(v) {
  uniq <- unique(v)
  uniq[which.max(tabulate(match(v, uniq)))]
}

summary_info <- list()
summary_info$num_obs <- nrow(df)
summary_info$num_aqi_category <- length(unique(df %>%
                                  filter(!is.na(`AQI Category`)) %>%
                                  filter(`AQI Category` != "") %>%
                                  pull(`AQI Category`)))
summary_info$mode_aqi_category <- getmode(df$`AQI Category`)
summary_info$mean_aqi <- mean(df$AQI)
summary_info$max_aqi <- max(df$AQI)
summary_info$max_aqi_site <- df$Site[df$AQI == max(df$AQI)]
