library(dplyr)
library(tidyr)
library(ggplot2)

Shanghai <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shanghai_PM2.5_2013-2021.csv")
Shenyang <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shenyang_PM2.5_2013-2021.csv")
Guangzhou <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Guangzhou_PM2.5_2013-2021.csv")
Beijing <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Beijing_PM2.5_2013-2021.csv")


Shanghai <- Shanghai[!grepl("Site", Shanghai$Site),]
Shanghai <- Shanghai[!grepl("-999", Shanghai$AQI),]
Shanghai <- transform(Shanghai, AQI = as.numeric(AQI))
Shanghai <- transform(Shanghai, Year = as.numeric(Year))

Shanghai <- Shanghai %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
Shanghai <- aggregate(Shanghai$AQI, list(Shanghai$Year), FUN = mean)
colnames(Shanghai)[1] <- "Year"
colnames(Shanghai)[2] <- "AQI" 
Shanghai <- head(Shanghai, -1)
Shanghai$Site <- "Shanghai"



my_df <- full_join(Shanghai, Shenyang)
my_df <- full_join(my_df, Guangzhou)
my_df <- full_join(my_df, Beijing)

# Removes rows without any information
my_df <- my_df[!grepl("Site", my_df$Site),]
my_df <- my_df[!grepl("-999", my_df$AQI),]
my_df <- transform(my_df, AQI = as.numeric(AQI))
my_df <- transform(my_df, Raw.Conc. = as.numeric(Raw.Conc.))

hist(Shanghai$Year)

hist(Shanghai,
     main = "Average Annual AQI in Each City",
     xlab = "Year",
     ylab = "Air Quality Index")
