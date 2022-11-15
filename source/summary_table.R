library(dplyr)
library(ggplot2)
library(tidyr)
library(data.table) 

file_path <- list.files(path = "data/",pattern = ".csv", full.names = TRUE)
df_combine <- lapply(file_path, fread, sep=",")
df <- rbindlist(df_combine)
df <- df[AQI >= 0]
df <- select(Year, Month, Day, Hour, AQI, Site)

table <- df %>%
  filter(!is.na(AQI)) %>%
  filter(AQI != "") %>%
  group_by(Year, Site) %>%
  summarise_at(vars(AQI), list("AQI Mean" = mean))