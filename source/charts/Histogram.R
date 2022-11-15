# This chart displays the Annual Average AQI for each city in China and reveals the overall 
# decline in average AQI. The chart gives a good summary of the change in AQI in the four major 
# Chinese cities. On average, Beijing and Shenyang have the highest average AQI while Guangzhou
# has the lowest average AQI. 



library(dplyr)
library(tidyr)
library(ggplot2)

Shanghai <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shanghai_PM2.5_2013-2021.csv")
Beijing <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Beijing_PM2.5_2013-2021.csv")
Shenyang <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shenyang_PM2.5_2013-2021.csv")
Guangzhou <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Guangzhou_PM2.5_2013-2021.csv")


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



Beijing <- Beijing[!grepl("Site", Beijing$Site),]
Beijing <- Beijing[!grepl("-999", Beijing$AQI),]
Beijing <- transform(Beijing, AQI = as.numeric(AQI))
Beijing <- transform(Beijing, Year = as.numeric(Year))

Beijing <- Beijing %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
Beijing <- aggregate(Beijing$AQI, list(Beijing$Year), FUN = mean)
colnames(Beijing)[1] <- "Year"
colnames(Beijing)[2] <- "AQI" 
Beijing <- head(Beijing, -1)
Beijing$Site <- "Beijing"


Shenyang <- Shenyang[!grepl("Site", Shenyang$Site),]
Shenyang <- Shenyang[!grepl("-999", Shenyang$AQI),]
Shenyang <- transform(Shenyang, AQI = as.numeric(AQI))
Shenyang <- transform(Shenyang, Year = as.numeric(Year))

Shenyang <- Shenyang %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
Shenyang <- aggregate(Shenyang$AQI, list(Shenyang$Year), FUN = mean)
colnames(Shenyang)[1] <- "Year"
colnames(Shenyang)[2] <- "AQI" 
Shenyang <- head(Shenyang, -1)
Shenyang$Site <- "Shenyang"


Guangzhou <- Guangzhou[!grepl("Site", Guangzhou$Site),]
Guangzhou <- Guangzhou[!grepl("-999", Guangzhou$AQI),]
Guangzhou <- transform(Guangzhou, AQI = as.numeric(AQI))
Guangzhou <- transform(Guangzhou, Year = as.numeric(Year))

Guangzhou <- Guangzhou %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
Guangzhou <- aggregate(Guangzhou$AQI, list(Guangzhou$Year), FUN = mean)
colnames(Guangzhou)[1] <- "Year"
colnames(Guangzhou)[2] <- "AQI" 
Guangzhou <- head(Guangzhou, -1)
Guangzhou$Site <- "Guangzhou"


my_df <- full_join(Shanghai, Shenyang)
my_df <- full_join(my_df, Guangzhou)
my_df <- full_join(my_df, Beijing)


ggplot(my_df, 
       aes (x = Year,
            y = AQI,
            fill = Site)) +
  geom_bar(stat = "identity",
           position = "dodge") +
  theme_minimal() +
  ggtitle("Average Annual AQI in Each City") +
  xlab("Year") +
  ylab("Air Quality Index") +
  scale_x_continuous(breaks = seq(2013, 2022, by = 1))
