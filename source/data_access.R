library(readr)

# pls make sure to run all of this when loading data
Shanghai <- read.csv("data/Shanghai_PM2.5_2013-2021.csv")
Shanghai <- subset(Shanghai, Site != 'Site')
Shenyang <- read.csv("data/Shenyang_PM2.5_2013-2021.csv")
Shenyang <- subset(Shenyang, Site != 'Site')
Guangzhou <- read.csv("data/Guangzhou_PM2.5_2013-2021.csv")
Guangzhou <- subset(Guangzhou, Site != 'Site')
Beijing <- read.csv("data/Beijing_PM2.5_2013-2021.csv")
Beijing <- subset(Beijing, Site != 'Site')


# work in progress to calculate the aveage aqi per day
# pls feel free to change or add on to it
# the issue is changing the date column to actual date objects
for(i in 1:length(Shanghai$Date..LT.)){
  Shanghai$Date..LT.[i] <- (substring(Shanghai$Date..LT.[i], 1,10))
}

Shanghai <- Shanghai %>%
  group_by(as.Date(Date..LT.)) %>%
  summarize(AQI=(sum(AQI)/24))

