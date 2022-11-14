# China Air Quality Index: Project Proposal
Codename: ChinaAir

---
![Factory Air Pollution](https://www.reuters.com/resizer/xgio379tIIXg4GeQCwAKlU7s5us=/1200x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/XKKXRQA2NJJTTOCA6DSSUHQIKI.jpg)
(A man walks through the smog in a Beijing shopping district. [Credit](https://www.reuters.com/world/china/china-must-raise-air-quality-standards-smog-persists-task-force-2022-04-23/))

**Authors:**</br>
Jessica Wang (jwang717@uw.edu), Lauren Yarrington (lyarri@uw.edu), Yanyi Li (yanyili@uw.edu), Xinmeng Wang (xinmew@uw.edu)

**Affiliation:**</br>
INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

**Date:** Autumn 2022

**Keywords:** Air Quality Index(AQI), air quality, industry, smog, air pollution

---
## Abstract:
Our main question is "What industries result in the most air pollution?" This question is important because China is the largest manufacturer in the world, and Chinese citizens are forced to suffer the consequences of their air being polluted by these industries. To address this question, we will evaluate a set of air quality index data and industry data collected from four major Chinese cities - Beijing, Shanghai, Guangzhou, and Shenyang - over the past 20 years and analyze the results.

---
## **Introduction:**
Global warming has affected all aspects of human life, especially human health. Air pollution in particular has left a devastating effect on the lives of people all over the world. Bad air quality can lead to the development or exacerbation of severe respiratory conditions such as asthma, bronchitis, or even cancer. For this project, information was taken from studies that gathered data over a period of nine years in Beijing, Shanghai, Guangzhou, and Shenyang on the daily air quality index. As some of the biggest cities in the leading manufacturing country in the world, these four cities are home to major factories and manufacturing plants, which have destroyed the air quality. They are also home to nines of millions of citizens combined, meaning the worsening air is hurting a significant number of people. The aim of this data analysis is to determine which of these four cities' air qualities has deteriorated the most and then use that to identify which industries are most detrimental to air quality.

---
## Problem Domain:
- Project Farming:
    - Taking into consideration the millions of lives affected by the air pollution in these four cities in China, our project aims to find out whether the air quality has worsened over the past two decades. We chose to look at the two most recent decades, not just because the air pollution now is at an all time high, but also because China has made moves to improve the air quality in recent years. We hoped to see whether the data could support this goal. [Link](https://www.unep.org/interactive/beat-air-pollution/)
- Human Values:
    - Citizens are the ones most affected by this issue, and the problem of poor air quality violates the values of fairness, equality, and life. These Chinese citizens are not the only ones creating the air pollution, but they are the ones who are forced to suffer the bulk of the consequences. Clean, breathable air is a right that every person deserves access to, but the residents of these cities unfortunately do not have access. Their lives are being shornineed as the poor air quality destroys their bodies from the inside out. [Link](https://www.statista.com/statistics/1136687/china-number-of-arrivals-of-inbound-international-tourists-in-beijing/)
- Direct Stakeholders:
    - The people living in Beijing, Shanghai, Guangzhou, and Shenyang are undoubtedly the ones that are the most affected by the results of this study. They have to breathe this unbreathable air and live out their lives normally every single day. The millions of visitors to these cities may also directly suffer the consequences. [Link](https://www.economist.com/the-economist-explains/2021/03/15/why-is-beijings-air-quality-so-bad-again)
- Indirect Stakeholders:
    - The Chinese government is indirectly affected by the results of this study. After having made a verbal commitment to bettering the air in all of China, this study will reveal whether they have achieved this goal. Other cities around the world that are plagued by unhealthy air are also indirectly affected by the results, because if the study goes well, their leadership could be inspired and follow in the Chinese government's footsteps.
- Benefits:
    - If the study reveals the Chinese government has achieved their goal, citizens will know they can trust their government to keep their best interests at heart, and the government will be able to protect their reputation. Other international governments may also be able to mimic China's system in their own countries.
- Harms:
    - On the other hand, if the study reveals the Chinese government has failed to keep their word, they will lose the trust of their citizens and their reputation internationally. Moreover, citizens must continue to suffer the health detriments of poor air quality.

---
## Research Questions:
1. How has the air quality in the four most popular cities in China changed over time? We are trying to find the trend in the quality of air in Beijing, Guangzhou, Shanghai, and Shenyang over the span of nine years. We hope to find a general trend in air quality and see if there are certain events that cause a rapid decline in air quality.
2. What are the main industries in these particular cities in China?  Has the main industry in these cities changed drastically in nine years? If we are able to understand the main industry sectors of these four cities, we will better understand the way of life in these cities.
3. How do air quality and industry relate? We hope to see if there is a correlation between the quality of air in four Chinese cities and the major industries in these cities over a period of nine years. We hope to find evidence that certain industries cause a faster decline in air quality which do not affect the air quality. By understanding the different ways of life in these cities, we will be able to better understand how those ways of life influence the air quality.

---
## Dataset:
- The data set helps to answer the research question about how the air quality in the four most populated cities in China has changed over the span of nine years.
- The data presents the hourly air quality index of these four cities every day of the year. The data includes AQI categories ranging from "good" to "hazardous". The data also includes the raw concentration of PM2.5 (particulate matter with a diameter of less than 2.5 micrometers) in the unit microgram per cubic unit of air (μg/m3).
- This data allows us to track the changes in air quality during the years 2013 to 2021. All of this data can be found on the website airnow.gov, which is a U.S. government website used to track the air quality throughout the US and US embassies and consulates across the world. This website contains current information on the air quality around the world as well as historical data, which is what we are accessing.
- AirNow has been collecting data on the air quality around the world since at least 1980 for the purpose of communicating whether the air quality is healthy or unhealthy. AirNow uses the official U.S. Air Quality Index to report their findings and is in partnership with the U.S. Environmental Protection Agency, National Oceanic and Atmospheric Administration, NASA, National Parks Service, and many other nationally recognized agencies to provide fire and smoke data to the public.
- This centralized data system is able to communicate data to the public, researchers, businesses, educators, and more as well as provide them with quality information about the quality of air and consistent reporting.
- The data that we will be accessing for our report comes from four U.S. Embassies and Consulates in China: Beijing, Shenyang, Guangzhou, and Shanghai. This data is available to the public and contains in depth information about the concentration of PM2.5 particulates.
- Sources: [Shenyang](https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shenyang), [Beijing](https://www.airnow.gov/international/us-embassies-and-consulates/#China$Beijing), [Guangzhou](https://www.airnow.gov/international/us-embassies-and-consulates/#China$Guangzhou), [Shanghai](https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shanghai)

|Name of Data File|Number of Observations (Rows)|Number of Variables (Columns)|
|---|---|---|
Shenyang_PM2.5_2013_YTD.csv|8761|14|
Shenyang_PM2.5_2014_YTD.csv|8761|14|
Shenyang_PM2.5_2015_YTD.csv|8761|14|
Shenyang_PM2.5_2016_YTD.csv|8761|14|
Shenyang_PM2.5_2017_YTD.csv|8761|14|
Shenyang_PM2.5_2018_YTD.csv|8761|14|
Shenyang_PM2.5_2019_YTD.csv|8761|14|
Shenyang_PM2.5_2020_YTD.csv|8761|14|
Shenyang_PM2.5_2021_YTD.csv|8761|14|
Beijing_PM2.5_2013_YTD.csv|8761|14|
Beijing_PM2.5_2014_YTD.csv|8761|14|
Beijing_PM2.5_2015_YTD.csv|8761|14|
Beijing_PM2.5_2016_YTD.csv|8761|14|
Beijing_PM2.5_2017_YTD.csv|8761|14|
Beijing_PM2.5_2018_YTD.csv|8761|14|
Beijing_PM2.5_2019_YTD.csv|8761|14|
Beijing_PM2.5_2020_YTD.csv|8761|14|
Beijing_PM2.5_2021_YTD.csv|8761|14|
Guangzhou_PM2.5_2013_YTD.csv|8761|14|
Guangzhou_PM2.5_2014_YTD.csv|8761|14|
Guangzhou_PM2.5_2015_YTD.csv|8761|14|
Guangzhou_PM2.5_2016_YTD.csv|8761|14|
Guangzhou_PM2.5_2017_YTD.csv|8761|14|
Guangzhou_PM2.5_2018_YTD.csv|8761|14|
Guangzhou_PM2.5_2019_YTD.csv|8761|14|
Guangzhou_PM2.5_2020_YTD.csv|8761|14|
Guangzhou_PM2.5_2021_YTD.csv|8761|14|
Shanghai_PM2.5_2013_YTD.csv|8761|14|
Shanghai_PM2.5_2014_YTD.csv|8761|14|
Shanghai_PM2.5_2015_YTD.csv|8761|14|
Shanghai_PM2.5_2016_YTD.csv|8761|14|
Shanghai_PM2.5_2017_YTD.csv|8761|14|
Shanghai_PM2.5_2018_YTD.csv|8761|14|
Shanghai_PM2.5_2019_YTD.csv|8761|14|
Shanghai_PM2.5_2020_YTD.csv|8761|14|
Shanghai_PM2.5_2021_YTD.csv|8761|14|

---
## Expected Implications:
Assuming that we successfully answer our research questions, then the results will allow technologists, designers, and policymakers to increase their awareness of the severeness of the issue of air pollution. They will better understand our concerns on the health issues being caused by air pollution, enabling them to make some changes to mitigate the current situation. This research project can also act as a reference to technologists for data analysis and help beginner R programmers better understand R, visualizations, and deep data analysis. Furthermore, this research project can demonstrate to the public the importance of recording data. Through collecting data, we have data that can be analyzed to not only find out who is responsible for current issues, but also who is in a position to begin to solve the problems.

---
## Limitations:
There are various limitations for this project. The first limitation is our limited skills in R and analyzing data. Our visualizations may be insufficient or even incorrect because of our limited R skills. We may also have some analysis errors because of the large dataset we are analyzing. The second limitation we need to consider is the authenticity of the dataset. Though the dataset is coming from a verifiable source, how can we truly trust data? Many factors can affect data throughout its collection, and there is no guarantee that even government data is absolutely accurate. Furthermore, because of the large quantity of the data in the dataset, it is unrealistic for us to verify data integrity, so we can only assume the data we are analyzing is accurate.

---
## Acknowledgements:
We would like to acknowledge other group members for working on this project. We also would like to acknowledge our TA for helping us going through the project requirements.

---
## References:
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Beijing
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Guangzhou
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shanghai
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shenyang

---
## Appendix A: Questions:
- Are the citations formatted correctly?
