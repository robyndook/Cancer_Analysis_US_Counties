# Cancer_Treatment_Centers_California 
Cancer Incidence and Mortality across US Counties [^1]

![Image](https://github.com/robyndook/Cancer_Treatment_Centers_California/blob/e54c1604e93be8d994757b02602943391450f4bc/Team_Notes/Cancer_Ribbon.jpg)
[^2]

Data Analytics Final - Medically Under Area Index Mortality and Incidence Rate Analytics on Cancer Treatment Centers by US Counties using Medically Under Area Index (MUA), Mortality, Median Income, Population, Age, Race, and Gender
### Overview
- We will use our knowledge of Python to web-scrape dataset and create a database or all Cancer types per county in the United States, MUA Index, Median Income, Population, Age, Race, and Gender
- Using this data we will utilize Machine Learning to build a dynamic table, to answer three key questions
    - Is there a relationship between Cancer Mortality or Incidence and Medically Underserved Index per County
    - Is there a relationship between Cancer Mortality or Incidence and Demographic Data per County
    - Is there a relationship between Cancer Mortality or Incidence and Median Household Income per County
- With Tableau we will display the database to show area where Cancer Mortality and Incidence are prelevant and a dinamic visualization of the demographics we chose
- Finally we will compile our visualiztions and Machine Learning results into a web site using HTML, CSS and Bootstrap
    - Our webpage will highlight our skills and link directly to our Linkedin, GitHub, and direct contact
    - [Add Webpage Here]
### Results
#### Machine Learning
**For Detailed Results for Regression Module please view [THIS](https://github.com/robyndook/Cancer_Treatment_Centers_California/blob/c8516c38818c61b649145c372da5ea5a9505d48c/Machine_Learning_Model/Segment_3_Models/Segment_3_Written_Report.md) page**  
We decided to stick with linear regression for our model choice because it became apparent that more advance machine learning regression techniques would be unlikely to improve model performance. For example, when we tried to use a decision tree regression, r-squared values never improved substantially, and in many cases they were actually lower than the basic linear regression. I think this was the case because more complex machine learning models typically don't improve model performance when datasets are smaller such as the ones we used in our regressions. We found it more important to spend our time optimizing the basic linear regression models by changing the regressors, editing the data preprocessing, etc.

The benefit of using linear regression is that they can produce a unique prediction for incidence/mortality rates based on a unique set of inputs. That being said, however, while linear regression was the right choice for our model selection, we were limited in that we could not create regressions that included variation in each of sex, age, and race/ethnicity since we weren't able to scrape this data. As a result, the predictive power of each regression was slightly more limited than we had hoped we could create.

In all, despite some of the challenges we faced, our models lead us to conclusive answers to each of our questions:

 1. We did not find a statistically significant relationship between cancer mortality/incidence and the medically underserved index.
 2. While gender and race certainly has an impact on cancer mortality/incidence, age is the demographic characteristic accounting for the vast majority of variety in these rates.
 3. We found the impact of median household income on cancer mortality/incidence to be minimal (essentially zero).
#### Tabealu Dashboard
**Cancer Incidence and Mortality across US Counties [Tableau](https://public.tableau.com/app/profile/leyzer.coker/viz/FinalProject_16543185620090/Dashboard1)** 
![Image](https://github.com/robyndook/Cancer_Treatment_Centers_California/blob/28e7f1d13063eaed458f1cf8344b1a687d67c8fb/Dashboard/2022-06-05_15-45-18.jpg)
#### Database ERD
![Image](https://github.com/robyndook/Cancer_Treatment_Centers_California/blob/28e7f1d13063eaed458f1cf8344b1a687d67c8fb/Database/Images/2022-06-05_15-46-32.jpg)
### Project Outline
All team members assited in all aspects of the project, but we designated leds for each part
- Webscrapping and dataset cleaning by [Andrew Abramo](https://github.com/drewabramo12)
    - Branch: abramo_data_analysis
- Database and GitHub Management by [Robyn Cook](https://github.com/robyndook)
    - Branch: cook_data_analysis
- Machine Learning by [Henry Bowman](https://github.com/henrybowman99)
    - Branch: bowman_data_analysis
- Tableau Dashboard and Visualization by [Leyzer Coker](https://github.com/Leyzer1)
    - Brach: leyzer_data_analysis
- Webpage by [Amar Shah](https://github.com/amarshah4334)
    - Branch: amar_data_analysis
#### Data Collection
##### Webscrapping
- Tools Used:
    - Pandas
    - Browser
    - Selenium
    - BS4
    - Time
    - Webdriver_manager.chrome
- Resources
    - [State Cancer Profile - Mortality](https://www.statecancerprofiles.cancer.gov/data-topics/mortality.html)
    - [State Cancer Profile - Incidence](https://www.statecancerprofiles.cancer.gov/data-topics/incidence.html)
    - [HRSA Data](https://data.hrsa.gov/tools/shortage-area/mua-find) 
    - [United States Census Bureau - Population and Median Income](https://www.census.gov/data.html)
##### Database
- Tools Used
    - Pandas
    - PostgresSQL
##### Machine Learning
- Tools Used
    - Sklearn
    - Statsmodels
    - Pandas
    - Numpy
- Modules:
    - train_test_split
    - StandardScaler
    - OneHotEncoder
##### Tableau Dashboard 
- Tools Used
    - Tableau
    - Pandas
    - Excel
##### Webpage
- Tools Used
    - HTML
    - CSS
    - Bootstrap
    - JavaScript
##### [Google Slides Presentation](https://docs.google.com/presentation/d/18aTQwenEbAp9z6bty2mMCzodhOdcFKf8XIp5ZNyxUNw/edit#slide=id.p)
#### Communication Protocols
- No commits before 5pm
- Final commit by 10pm on Sundays
- Meet three times per week during class, 
    - Once per week outside of class - Friday's at 7pm (Teams Invite)
- Start with review of projects
- End with determined outcomes by following meeting
[^1]: By using these data, you signify your agreement to comply with the following statutorily based requirements.
    - The Public Health Service Act (42 U.S.C. 242m(d)) provides that the data collected by the National Center for Health Statistics (NCHS) may be used only for the purpose for which they were obtained; any effort to determine the identity of any reported cases, or to use the information for any purpose other than for statistical reporting and analysis, is against the law. The National Program of Cancer Registries (NPCR), Centers for Disease Control and Prevention (CDC), has obtained an assurance of confidentiality pursuant to Section 308(d) of the Public Health Service Act, 42 U.S.C. 242m(d). This assurance provides that identifiable or potentially identifiable data collected by the NPCR may be used only for the purpose for which they were obtained unless the person or establishment from which they were obtained has consented to such use. Any effort to determine the identity of any reported cases, or to use the information for any purpose other than statistical reporting and analysis, is a violation of the assurance.

[^2]: Cover Image Source - https://magnetamerica.com/cancer-awareness-rainbow-ribbon-magnet/
