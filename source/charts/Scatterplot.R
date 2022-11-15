library(dplyr)
library(tidyr)
library(ggplot2)

beijing <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Beijing_PM2.5_2013-2021.csv")
guangzhou <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Guangzhou_PM2.5_2013-2021.csv")
shanghai <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shanghai_PM2.5_2013-2021.csv")
shenyang <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shenyang_PM2.5_2013-2021.csv")
View(beijing)

beijing <- transform(beijing, AQI = as.numeric(AQI))
beijing <- beijing[!grepl("-999", beijing$AQI),]

beijing_avg_2013 <- beijing %>%
  select(Year, AQI) %>%
  drop_na() %>%
  filter(Year == 2013, FUN = TRUE) %>%
  sum(beijing$AQI) / nrow(beijing)
