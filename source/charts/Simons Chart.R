# Load required library and data
library(readr)
library(dplyr)
library(ggplot2)
library(data.table)

get_simon_chart <- function(){
  file_path <- list.files(path = "../data/",pattern = "Shanghai*", full.names = TRUE)
  df_combine <- lapply(file_path, fread, sep=",")
  Shanghai <- rbindlist(df_combine)
  file_path <- list.files(path = "../data/",pattern = "Beijing*", full.names = TRUE)
  df_combine <- lapply(file_path, fread, sep=",")
  Beijing <- rbindlist(df_combine)
  file_path <- list.files(path = "../data/",pattern = "Shenyang*", full.names = TRUE)
  df_combine <- lapply(file_path, fread, sep=",")
  Shenyang <- rbindlist(df_combine)
  file_path <- list.files(path = "../data/",pattern = "Guangzhou*", full.names = TRUE)
  df_combine <- lapply(file_path, fread, sep=",")
  Guangzhou <- rbindlist(df_combine)
  Shanghai <- subset(Shanghai, Site != 'Site')
  Shenyang <- subset(Shenyang, Site != 'Site')
  Guangzhou <- subset(Guangzhou, Site != 'Site')
  Beijing <- subset(Beijing, Site != 'Site')
  
  Shanghai <- subset(Shanghai, select = c(Year, Month, Day, `AQI Category`))
  Shanghai_Unhealthy <- sum(Shanghai$`AQI Category` == "Unhealthy")
  Shanghai_Sensitive_Unhealthy <- sum(Shanghai$`AQI Category` == "Unhealthy for Sensitive Groups")
  Shanghai_Very_Unhealthy <- sum(Shanghai$`AQI Category` == "Very Unhealthy")
  Shanghai_Moderate <- sum(Shanghai$`AQI Category` == "Moderate")
  Shanghai_Good <- sum(Shanghai$`AQI Category` == "Good")
  Shanghai <- c("Good" = Shanghai_Good, "Moderate" = Shanghai_Moderate, 
                "Unhealthy for Sensitive Groups" = Shanghai_Sensitive_Unhealthy, 
                "Unhealthy" = Shanghai_Unhealthy, "Very Unhealthy" = Shanghai_Very_Unhealthy)
  Shanghai <- round(Shanghai/sum(Shanghai), digits=4)
  
  Shenyang <- subset(Shenyang, select = c(Year, Month, Day, `AQI Category`))
  Shenyang_Unhealthy <- sum(Shenyang$`AQI Category` == "Unhealthy")
  Shenyang_Sensitive_Unhealthy <- sum(Shenyang$`AQI Category` == "Unhealthy for Sensitive Groups")
  Shenyang_Very_Unhealthy <- sum(Shenyang$`AQI Category` == "Very Unhealthy")
  Shenyang_Moderate <- sum(Shenyang$`AQI Category` == "Moderate")
  Shenyang_Good <- sum(Shenyang$`AQI Category` == "Good")
  Shenyang <- c("Good" = Shenyang_Good, "Moderate" = Shenyang_Moderate, 
                "Unhealthy for Sensitive Groups" = Shenyang_Sensitive_Unhealthy, 
                "Unhealthy" = Shenyang_Unhealthy, "Very Unhealthy" = Shenyang_Very_Unhealthy)
  Shenyang <- round(Shenyang/sum(Shenyang), digits=4)
  
  Beijing <- subset(Beijing, select = c(Year, Month, Day, `AQI Category`))
  Beijing_Unhealthy <- sum(Beijing$`AQI Category` == "Unhealthy")
  Beijing_Sensitive_Unhealthy <- sum(Beijing$`AQI Category` == "Unhealthy for Sensitive Groups")
  Beijing_Very_Unhealthy <- sum(Beijing$`AQI Category` == "Very Unhealthy")
  Beijing_Moderate <- sum(Beijing$`AQI Category` == "Moderate")
  Beijing_Good <- sum(Beijing$`AQI Category` == "Good")
  Beijing <- c("Good" = Beijing_Good, "Moderate" = Beijing_Moderate, 
               "Unhealthy for Sensitive Groups" = Beijing_Sensitive_Unhealthy, 
               "Unhealthy" = Beijing_Unhealthy, "Very Unhealthy" = Beijing_Very_Unhealthy)  
  Beijing <- round(Beijing/sum(Beijing), digits=4)  
  
  Guangzhou <- subset(Guangzhou, select = c(Year, Month, Day, `AQI Category`))
  Guangzhou_Unhealthy <- sum(Guangzhou$`AQI Category` == "Unhealthy")
  Guangzhou_Sensitive_Unhealthy <- sum(Guangzhou$`AQI Category` == "Unhealthy for Sensitive Groups")
  Guangzhou_Very_Unhealthy <- sum(Guangzhou$`AQI Category` == "Very Unhealthy")
  Guangzhou_Moderate <- sum(Guangzhou$`AQI Category` == "Moderate")
  Guangzhou_Good <- sum(Guangzhou$`AQI Category` == "Good")
  Guangzhou <- c("Good" = Guangzhou_Good, "Moderate" = Guangzhou_Moderate, 
                 "Unhealthy for Sensitive Groups" = Guangzhou_Sensitive_Unhealthy, 
                 "Unhealthy" = Guangzhou_Unhealthy, "Very Unhealthy" = Guangzhou_Very_Unhealthy)  
  Guangzhou <- round(Guangzhou/sum(Guangzhou), digits=4)
  
  # Graph the plot
  my_chart <- data.frame(Shanghai, Shenyang, Beijing, Guangzhou)
  my_chart <- data.matrix(my_chart)
  par(mar = c(3, 7, 2, 2), xpd = TRUE)
  chart <- barplot(my_chart,
                   main = "Perecentage of Time Each City Spent Under Each AQI Category",
                   xlab = "City",
                   col = c("dark green", "green", "yellow", "orange", "red"), cex.main = 0.8)
  legend("topleft", c("Healthy", "Moderate", "Unhealthy for Sensitive Groups", "Unhealthy", "Very Unhealthy"),
         fill = c("dark green", "green", "yellow", "orange", "red"),
         cex = 0.45,
         inset = c(-0.4,0.05))
  return(chart)
}
