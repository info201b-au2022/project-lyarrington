library(shiny)
library(plotly)
#source("AQI_Category_Chart.R")
#source("source/AQI_Category_Chart.R")

intro_tab <- tabPanel(
    title = "Introduction",
    titlePanel("China Air Quality Index"),
    p("Author: Jessica Wang (jwang717@uw.edu), Lauren Yarrington (lyarri@uw.edu), Yanyi Li (yanyili@uw.edu), Xinmeng Wang (xinmew@uw.edu)"),
    p("Date: Autumn 2022"),
    p("Affiliation: INFO-201: Technical Foundations of Informatics - The Information School - University of Washington"),
    p("Keywords: Air Quality Index(AQI), air quality, industry, smog, air pollution", style="font-style: italic;"),
    img(src = "https://www.reuters.com/resizer/xgio379tIIXg4GeQCwAKlU7s5us=/1200x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/XKKXRQA2NJJTTOCA6DSSUHQIKI.jpg", style = "width: 100%; height: 100%;"),
    p("As the world has grown and developed, numerous unforeseen consequences have come up. One such issue is air pollution. Due to unsustainable practices in 
manufacturing and across other industries, the air we are breathing is continuously becoming more and more unsafe. As the top manufacturing country in the 
world, China has remained one of the largest contributors to this problem. Their citizens are suffering the consequences: many experience breathing 
problems, some worsening into chronic respiratory diseases and even death. Faced with backlash from the international community, China has taken major 
steps towards reversing these changes by implementing programs and changes in their industries. We decided to analyze the top four polluting cities in 
China (Beijing, Shanghai, Guangzhou, and Shenyang) to find potential trends in their industries and air pollution and verify if their programs have been 
successful. Our goal was to identify which industries would potentially pollute the air the most. We had three major questions:"),
    h5("1. How has air quality changed over the past decade in each city?", style="font-weight: bold;"),
    h5("2. What are the top industries of each of the four cities?", style="font-weight: bold;"),
    h5("3. Which industries contributed the most to polluting the air?", style="font-weight: bold;"),
    p("To answer these questions, we first analyzed air pollution trends in these four cities. We used data collected by each city’s United States embassy over 
the past decade. The results of this analysis were used along with information about each city’s top industries and manufacturing outputs to determine 
which industries were most detrimental to the environment. Our findings revealed that the chemical industry contributed significantly more to air pollution
than the automotive industry because the only city that experienced worsening air quality was the city that housed major chemical plants (Beijing), while 
the other cities (Shanghai, Guangzhou, and Shenyang), which all depended heavily on the automotive industry, saw improved air quality.")
)

graph_1_tab <- tabPanel(
    title = "Graph 1",
#    plotlyOutput("graph_1")
)

graph_3_tab <- tabPanel(
    title = "Graph 3",
#    plotlyOutput("graph_3")
)

graph_2_tab <- tabPanel(
    title = "Graph 2",
    mainPanel(
        sidebarLayout(
            sidebarPanel(
                sliderInput("timeRange",
                label = h5("Select your time range"),
                min = 2013,
                max = 2021,
                value = c(2013, 2021),
                sep = "")
            ),
            mainPanel(
                plotlyOutput("graph_2"),
                headerPanel(""),
                HTML("<br><br><br><br><br><br><br>"),
                p("The barplot plots the distribution of time of each city in that is categorized under each AQI category. The barplot is used to graphically demonstrate the ratio of time each city experienced with “unhealthy”or “healthy” air. On average, each city spends more than 50% of the time from 2013-2021 with what is considered hazardous air.")
            ),
        )
    )
)

summary_tab <- tabPanel(
    title = "Summary"
)

report_tab <- tabPanel(
    title = "Report",
    titlePanel("China Air Quality Index"),
    p("Author: Jessica Wang (jwang717@uw.edu), Lauren Yarrington (lyarri@uw.edu), Yanyi Li (yanyili@uw.edu), Xinmeng Wang (xinmew@uw.edu)"),
    p("Date: Autumn 2022"),
    p("Affiliation: INFO-201: Technical Foundations of Informatics - The Information School - University of Washington"),
    p("Keywords: Air Quality Index(AQI), air quality, industry, smog, air pollution", style="font-style: italic;"),
    h2("Abstract:"),
    p("Our main question is \"What industries result in the most air pollution?\" This question is important because China is the largest manufacturer in the world, and Chinese citizens are forced to suffer the consequences of their air being polluted by these industries. To address this question, we will evaluate a set of air quality index data and industry data collected from four major Chinese cities - Beijing, Shanghai, Guangzhou, and Shenyang - over the past 20 years and analyze the results."),
    h2("Introduction:"),
    p("Global warming has affected all aspects of human life, especially human health. Air pollution in particular has left a devastating effect on the lives of people all over the world. Bad air quality can lead to the development or exacerbation of severe respiratory conditions such as asthma, bronchitis, or even cancer. For this project, information was taken from studies that gathered data over a period of nine years in Beijing, Shanghai, Guangzhou, and Shenyang on the daily air quality index. As some of the biggest cities in the leading manufacturing country in the world, these four cities are home to major factories and manufacturing plants, which have destroyed the air quality. They are also home to nines of millions of citizens combined, meaning the worsening air is hurting a significant number of people. The aim of this data analysis is to determine which of these four cities' air qualities has deteriorated the most and then use that to identify which industries are most detrimental to air quality."),
    h2("Problem Domain:"),
    h3("Project Farming:"),
    p("Taking into consideration the millions of lives affected by the air pollution in these four cities in China, our project aims to find out whether the air quality has worsened over the past two decades. We chose to look at the two most recent decades, not just because the air pollution now is at an all time high, but also because China has made moves to improve the air quality in recent years. We hoped to see whether the data could support this goal."),
    tags$a(href = "https://www.unep.org/interactive/beat-air-pollution/", "Link"),
    h3("Human Values:"),
    p("Citizens are the ones most affected by this issue, and the problem of poor air quality violates the values of fairness, equality, and life. These Chinese citizens are not the only ones creating the air pollution, but they are the ones who are forced to suffer the bulk of the consequences. Clean, breathable air is a right that every person deserves access to, but the residents of these cities unfortunately do not have access. Their lives are being shornineed as the poor air quality destroys their bodies from the inside out."),
    tags$a(href = "https://www.statista.com/statistics/1136687/china-number-of-arrivals-of-inbound-international-tourists-in-beijing/", "Link"),
    h3("Direct Stakeholders:"),
    p("The people living in Beijing, Shanghai, Guangzhou, and Shenyang are undoubtedly the ones that are the most affected by the results of this study. They have to breathe this unbreathable air and live out their lives normally every single day. The millions of visitors to these cities may also directly suffer the consequences."),
    tags$a(href = "https://www.economist.com/the-economist-explains/2021/03/15/why-is-beijings-air-quality-so-bad-again", "Link"),
    h3("Indirect Stakeholders:"),
    p("The Chinese government is indirectly affected by the results of this study. After having made a verbal commitment to bettering the air in all of China, this study will reveal whether they have achieved this goal. Other cities around the world that are plagued by unhealthy air are also indirectly affected by the results, because if the study goes well, their leadership could be inspired and follow in the Chinese government's footsteps."),
    h3("Benefits:"),
    p("If the study reveals the Chinese government has achieved their goal, citizens will know they can trust their government to keep their best interests at heart, and the government will be able to protect their reputation. Other international governments may also be able to mimic China's system in their own countries."),
    h3("Harms:"),
    p("On the other hand, if the study reveals the Chinese government has failed to keep their word, they will lose the trust of their citizens and their reputation internationally. Moreover, citizens must continue to suffer the health detriments of poor air quality."),
    h2("Research Questions:"),
    h6("1. How has the air quality in the four most popular cities in China changed over time? We are trying to find the trend in the quality of air in Beijing, Guangzhou, Shanghai, and Shenyang over the span of nine years. We hope to find a general trend in air quality and see if there are certain events that cause a rapid decline in air quality.", style = "font-style: italic;"),
    h6("2. What are the main industries in these particular cities in China?  Has the main industry in these cities changed drastically in nine years? If we are able to understand the main industry sectors of these four cities, we will better understand the way of life in these cities.", style = "font-style: italic;"),
    h6("3. How do air quality and industry relate? We hope to see if there is a correlation between the quality of air in four Chinese cities and the major industries in these cities over a period of nine years. We hope to find evidence that certain industries cause a faster decline in air quality which do not affect the air quality. By understanding the different ways of life in these cities, we will be able to better understand how those ways of life influence the air quality.", style = "font-style: italic;"),
    h2("Dataset:"),
    p("The data set helps to answer the research question about how the air quality in the four most populated cities in China has changed over the span of nine years."),
    p("The data presents the hourly air quality index of these four cities every day of the year. The data includes AQI categories ranging from \"good\" to \"hazardous\". The data also includes the raw concentration of PM2.5 (particulate matter with a diameter of less than 2.5 micrometers) in the unit microgram per cubic unit of air (μg/m3)."),
    p("This data allows us to track the changes in air quality during the years 2013 to 2021. All of this data can be found on the website airnow.gov, which is a U.S. government website used to track the air quality throughout the US and US embassies and consulates across the world. This website contains current information on the air quality around the world as well as historical data, which is what we are accessing."),
    p(" AirNow has been collecting data on the air quality around the world since at least 1980 for the purpose of communicating whether the air quality is healthy or unhealthy. AirNow uses the official U.S. Air Quality Index to report their findings and is in partnership with the U.S. Environmental Protection Agency, National Oceanic and Atmospheric Administration, NASA, National Parks Service, and many other nationally recognized agencies to provide fire and smoke data to the public."),
    p("This centralized data system is able to communicate data to the public, researchers, businesses, educators, and more as well as provide them with quality information about the quality of air and consistent reporting."),
    p("The data that we will be accessing for our report comes from four U.S. Embassies and Consulates in China: Beijing, Shenyang, Guangzhou, and Shanghai. This data is available to the public and contains in depth information about the concentration of PM2.5 particulates."),
    HTML("<p>Sources: <a href='https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shenyang'>Shenyang</a>, <a href='https://www.airnow.gov/international/us-embassies-and-consulates/#China$Beijing'>Beijing</a>, <a href'https://www.airnow.gov/international/us-embassies-and-consulates/#China$Guangzhou'>Guangzhou</a>, <a href'https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shanghai'>Shanghai</a></p>"),
    h2("Findings:"),
    p("In our project, we investigated the change in air quality in four major cities in China to answer the main question: What industries result in the most air pollution? The data we analyzed helped us answer this question, as it revealed trends in air quality over the span of nine years. The data revealed that overall, the air quality in every city has improved since 2013. However, not every city has shown the same improvement in air quality. While Beijing started out with far worse air quality in 2013, by 2021, Beijing was no longer the city with the worst air quality. The average air quality in Beijing decreased every year with the exception of 2021 where the air quality worsened slightly. However, the average air quality in Shenyang did not have as linear of a path as Beijing. In 2013, Shenyang had far better air quality than Beijing did. Still, as every other city improved its air quality, Shenyang’s air quality worsened and by 2015, Shenyang replaced Beijing as the city with the worst air quality. But gradually, the air quality slowly began to improve with the exception of a spike in the average Air Quality Index (AQI) in 2019. The remaining two cities, Shanghai and Guangzhou seem to have similar trends in the average air quality over the nine-year span with a gradual decrease in the average AQI with a slight worsening in air quality in 2019 for the city of Shanghai and in 2017 for Guangzhou. Overall, however, there has been a drastic improvement in the average Air Quality Index in all four major cities across China. The data also tells a story about the industries that are most prominent in each city. Beijing is the only city that has an increase in the average AQI. This can be attributed to the fact that one of the main industries in Beijing is the chemical industry. This might explain why there is a worsening in the AQI in Beijing because, in the last two years, there has been an increase in the chemical industry due to a higher demand for plastics, the chemical industry’s main output. The recent Covid pandemic has led to an increase in single-use plastics with increased shipping with single-use plastic packaging and plastic masks. However, the chemical industry was not the only industry that was affected by the pandemic. Due to limited transportation, the automotive industry plummeted during the early months of covid. The restrictions on travel meant that there was a sharp decrease in demand for automobiles and this decrease in demand can be a factor that played into the improvement of air quality across the cities of Guangzhou, Shanghai, and Shenyang, which all share a commonality in a large industry focused on automobiles. In conclusion, after analyzing the data, there appears to be a strong correlation between air quality and industry because due to the type of major industries that take place in each city, there seems to be a change in the overall air quality in each city. We have found that cities with large chemical plants appear to be worsening in air quality while cities that have large automotive factories seem to have improved air quality."),
    h2("Conclusion:"),
    p("The data that we analyzed revealed that there is a strong correlation between the quality of air in cities and the main form of industry that occurs in that city. We have found that in cities where the main type of industry in that city is the chemical industry, the air quality in the surrounding areas worsened. By contrast, the data shows that in cities where there is a large automobile industry, air quality improves in the surrounding areas. This finding can help us understand what kind of industry is causing the most harm to the environment as well as the harm to the well-being of the citizens living close to industrial plants and factories. The data has helped us find evidence that the chemical industry causes a faster decline in air quality and by creating data visualizations that demonstrate the dangers of the chemical industry, we can help other people better understand the ways that this industry is causing harm to the environment and worsening the air quality. Our data visualization also helps to spread awareness about the impacts of our actions. The chemical industry's main products are polymers and plastics, which make up about 80% of the industry’s output. These plastics are seen all over the products that we purchase daily. The wrappers of the candy you eat, the packaging of the online delivery you receive in the mail, and the plastic bags you use to carry your items from the grocery store are all products of the chemical industry that are causing the most harm to our environment and air quality. Our findings shed light on the impact our own daily lives have on people that live thousands of miles away. Our way of life can have detrimental effects on the quality of air and quality of life for people all around the world, and it is our responsibility to learn about the consequences of our actions. By creating data visualizations that help people better understand the effects that their daily actions have on the environment, we hope to make just a small difference in the fight against climate change and encourage others to think about the impact that your daily actions can have on others and the environment."),
    h2("Discussion:"),
    p("In the last two and a half decade, China's citizen population grew by as much as 73% from 1997 to 2017. In that same time, the country’s GDP grew by an astounding 1078% and with that, the number of vehicles in China grew by 335% in merely two and a half decades. This without a doubt contributed to the infamously poor air quality in China.
Exposure to air pollution, according to Minnesota Pollution Control Agency, can be from a series of fronts such as vehicle exhaust, gas-fueled yard equipment, and industrial emissions. The citizens of China are direct stakeholders of this study, as they are subjected to these living conditions on a daily basis. When one breathes in particles, especially large particles, one is at an increased risk of a series of health concerns from coughs to itchy eyes, leading up to difficulty to breathe and lung diseases, and may result in conditions as serious as cancer or even death. As seen from out report, in the year 2013, more than an average of 65% of days, and as much as 85% of days in the city of Shanghai, was considered to have air qualities categorized at “Unhealthy for Sensitive Groups” or worse in all four major cities. This poses a major health risk to all the citizens of China.
Thankfully, as this study have uncovered, this trend has since moderately improved since 2013. Between the year 2020 and 2021, the four cities’ average number of days in “Unhealthy for Sensitive Groups” or worse dropped to an average of 40%, with Beijing, the country’s capital, taking the lead with only 20% of days considered “Unhealthy” and practically no days considered “Very Unhealthy”. While this is still far from a healthy environment, the residents of China can take comfort in the progress that has been made since and can hopefully look to a healthier future.  
On the other hand, this study’s result also testifies for the Chinese government. As a member of the study’s indirect stakeholder, the Chinese government proposed a five year action plan in September of 2013, in order to reduce the presence of PM¬2.5 in the air. This plan involved a series of actions such as limiting emissions standards, incentivized the purchase of private electric vehicles, and so forth. The results of this study revealed that the government actions must be inversely correlated with AQI measurements, suggesting that the Chinese government should benefit from the study’s result and gain more trust from its citizens for their efficiency and their part in bettering the air quality.
"),
    h2("Acknowledgements:"),
    p("We would like to acknowledge other group members for working on this project. We also would like to acknowledge our TA for helping us going through the project requirements."),
    h2("References:"),
    p("AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Beijing
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Guangzhou
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shanghai
AirNow.gov, U.S. EPA. (n.d.). US embassies and consulates. US Embassies and Consulates | AirNow.gov. Retrieved October 31, 2022, from https://www.airnow.gov/international/us-embassies-and-consulates/#China$Shenyang"),

)

ui <- navbarPage(
    title = "China Air Quality Index",
    intro_tab,
    graph_1_tab,
    graph_2_tab,
    graph_3_tab,
    summary_tab,
    report_tab
)