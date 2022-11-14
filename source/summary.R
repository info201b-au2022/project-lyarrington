# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:

source(data_access.R)

library(dplyr)

#
# Can someone check if the read.csv line works on their computer. I don't think the path is right
#

Shanghai <- read.csv("~/Documents/info201/project/project-lyarrington/data/Shanghai_PM2.5_2013-2021.csv")
Shenyang <- read.csv("~/Documents/info201/project/project-lyarrington/data/Shenyang_PM2.5_2013-2021.csv")
Guangzhou <- read.csv("~/Documents/info201/project/project-lyarrington/data/Guangzhou_PM2.5_2013-2021.csv")
Beijing <- read.csv("~/Documents/info201/project/project-lyarrington/data/Beijing_PM2.5_2013-2021.csv")

my_df <- full_join(Shanghai, Shenyang)
my_df <- full_join(my_df, Guangzhou)
my_df <- full_join(my_df, Beijing)

# Removes rows without any information
my_df <-my_df[!grepl("Site", my_df$Site),]


summary_info <- list()
summary_info$num_observations <- nrow(my_df)
summary_info$num_features <- ncol(my_df)
summary_info$num_Shanghai <- my_df %>%
  filter(Site == "Shanghai") %>% 
  nrow()
summary_info$num_Shenyang <- my_df %>%
  filter(Site == "Shenyang") %>% 
  nrow()
summary_info$num_Guangzhou <- my_df %>%
  filter(Site == "Guangzhou") %>% 
  nrow()
summary_info$num_Beijing <- my_df %>%
  filter(Site == "Beijing") %>% 
  nrow()
