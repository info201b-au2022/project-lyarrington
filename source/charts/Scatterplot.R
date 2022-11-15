# This chart displays the difference each year in average daily AQI in each of the four
# cities.

library(dplyr)
library(tidyr)
library(ggplot2)
install.packages("devtools")
library(devtools)
install_github("kassambara/easyGgplot2")
library(easyGgplot2)

beijing <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Beijing_PM2.5_2013-2021.csv")
guangzhou <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Guangzhou_PM2.5_2013-2021.csv")
shanghai <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shanghai_PM2.5_2013-2021.csv")
shenyang <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-lyarrington/main/data/Shenyang_PM2.5_2013-2021.csv")

<<<<<<< HEAD
beijing <- beijing[!grepl("Site", beijing$Site),]
beijing <- beijing[!grepl("-999", beijing$AQI),]
beijing <- transform(beijing, AQI = as.numeric(AQI))
beijing <- transform(beijing, Year = as.numeric(Year))

beijing <- beijing %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
beijing <- aggregate(beijing$AQI, list(beijing$Year), FUN = mean)
colnames(beijing)[1] <- "Year"
colnames(beijing)[2] <- "AQI" 
beijing <- head(beijing, -1)
beijing$Site <- "beijing"

beijing <- beijing %>%
  mutate(difference = AQI - lag(AQI))

guangzhou <- guangzhou[!grepl("Site", guangzhou$Site),]
guangzhou <- guangzhou[!grepl("-999", guangzhou$AQI),]
guangzhou <- transform(guangzhou, AQI = as.numeric(AQI))
guangzhou <- transform(guangzhou, Year = as.numeric(Year))

guangzhou <- guangzhou %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
guangzhou <- aggregate(guangzhou$AQI, list(guangzhou$Year), FUN = mean)
colnames(guangzhou)[1] <- "Year"
colnames(guangzhou)[2] <- "AQI" 
guangzhou <- head(guangzhou, -1)
guangzhou$Site <- "guangzhou"

guangzhou <- guangzhou %>%
  mutate(difference = AQI - lag(AQI))

shanghai <- shanghai[!grepl("Site", shanghai$Site),]
shanghai <- shanghai[!grepl("-999", shanghai$AQI),]
shanghai <- transform(shanghai, AQI = as.numeric(AQI))
shanghai <- transform(shanghai, Year = as.numeric(Year))

shanghai <- shanghai %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
shanghai <- aggregate(shanghai$AQI, list(shanghai$Year), FUN = mean)
colnames(shanghai)[1] <- "Year"
colnames(shanghai)[2] <- "AQI" 
shanghai <- head(shanghai, -1)
shanghai$Site <- "shanghai"

shanghai <- shanghai %>%
  mutate(difference = AQI - lag(AQI))

shenyang <- shenyang[!grepl("Site", shenyang$Site),]
shenyang <- shenyang[!grepl("-999", shenyang$AQI),]
shenyang <- transform(shenyang, AQI = as.numeric(AQI))
shenyang <- transform(shenyang, Year = as.numeric(Year))

shenyang <- shenyang %>% 
  select(Site, Year, AQI) %>% 
  drop_na()
shenyang <- aggregate(shenyang$AQI, list(shenyang$Year), FUN = mean)
colnames(shenyang)[1] <- "Year"
colnames(shenyang)[2] <- "AQI" 
shenyang <- head(shenyang, -1)
shenyang$Site <- "shenyang"

shenyang <- shenyang %>%
  mutate(difference = AQI - lag(AQI))

differences <- full_join(beijing, guangzhou)
differences <- full_join(differences, shanghai)
differences <- full_join(differences, shenyang)

ggplot2.scatterplot(data = differences, main = "Average AQI Differences Each Year",
                    xName = "Year",yName = "difference", 
                    groupName = "Site", size=3,
                    backgroundColor = "white",
                    groupColors = c('#00AFBB','#E7B800', '#FC4E07'),
                    setColorByGroupName = TRUE)
=======
beijing <- beijing[!grepl("-999", beijing$AQI),]
beijing <- beijing[!grepl("Site", beijing$Site),]
beijing <- transform(beijing, AQI = as.numeric(AQI))
beijing <- transform(beijing, Year = as.numeric(Year))


beijing_avg_2013 <- beijing %>%
  select(Year, AQI) %>%
  drop_na() %>%
  filter(Year == 2013) %>%
  sum(beijing$AQI) / nrow(beijing)
>>>>>>> 7c86ac12b63df255417f7f813caaac06dd54c2ea
