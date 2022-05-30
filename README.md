# Cancer_Treatment_Centers_California 

Cancer Treatment Analysis in California [^1]


Data Analytics Final - Population Analytics on Cancer Treatment Centers in California


- [Rubric Check List](https://docs.google.com/spreadsheets/d/1v1SoQnN5IQMc73mvup8fepkPMwDa6uQx_xUf28m6x9E/edit?usp=sharing)
- [Project Ideas and Notes](https://docs.google.com/document/d/1zQ-kWXyErR-VrSmm-UKi8zXpiTBnO7TUFKcRfpWdSdU/edit)


###### Overview
Overview of the project: Utilizing Machine learning to build a dynamic table, react to user input using JavaScript and incorporate it into a web site using HTML, CSS and Bootstrap for Lung Cancer across the state of California. We will use our knowledge of Python to create the different datasets and then utilizing Tableau create various visualizations finally incorporating it into an interactive model on HTML format

#### Communication Protocols
- No commits before 5pm
- Final commit by 10pm on Sundays
- Meet three times per week during class, 
    - Once per week outside of class - Friday's at 7pm (Teams Invite)
- Start with review of projects
- End with determined outcomes by following meeting
- File naming conventions example: name_1_filename.csv, name_1_filename.exl

### Project Outline

#### Progress On Data Collection
- *How you collected (or will collect) the data you like*
    - Webscraping Population/ incident for [State Cancer Profile](https://www.statecancerprofiles.cancer.gov/)
    - Webscraping mortality for [State Cancer Profile](https://www.statecancerprofiles.cancer.gov/)

    - Webscraping Medically underserved area value/ median income/ Rural/Non-Rural/MUA index level for [HRSA Data](https://data.hrsa.gov/tools/shortage-area/mua-find)

- *Plans on data cleaning (if needed)*
    - Using Pandas to load data and clean relevent data points
        - Data Points:
            - Data points from 2015 to 2019
            - County / State
            - Count of Incident
            - Count of Mortality 
            - Age
            - Gender 
            - Ethnicity  
            - Population
            - Median Income
            - MUA Index Level (medically underserved areas)
- *Initial list of modules/libraries you intend to use*
    - Webscrapping:
        - Pandas
        - BeautifulSoup
        - splinter
        - webdriver_manager.chrome 
        - Flask
        - PyMongo
        - AWS
    - Database:
        - SQL
        - Jupyter 

#### Progress on Dashboard 
- Three maps to represent Cancer incidents mortality and medically underserved areas (MUA)
- Show demographic of data points 
- Visualization 
    - Matplotlib 
    - Leaflet
    - Tableau
#### Progress on Machine Learning
- Linear regression to predict the potential Cancer incidents based on data points
- Prediction that medically underserved areas (MUA) have a higher rater of Cancer incidents and mortality
- Libraries:
    - tensorflow
    - sklearn.model_selection
    - sklearn.preprocessing
    - Pandas
- Modules:
    - train_test_split
    - StandardScaler
    - OneHotEncoder
### Segment 2 Summary 

This week we were able to create code for a multiple linear regression machine learning model. We selected this model because it is capable of predicting incidence or mortality rates based on a variety of other factors. A classification model, in comparison, would not have been appropriate because incidence/mortality rates aren't divided up into groups but instead run on a continuous scale. Initially we ran this model using the Scikit-learn library and then we ran it again with the Statsmodels library. We ran the model with our most up-to-date incidence and mortality datasets, which include county name, average annual count (either incidence or mortality), state name, type of cancer, race/ethnicity, sex, age group, age-adjusted rate (either incidene or mortality), and recent five-year trend in rate. NOTE: the current dataset does not distinguish sex, age, or type of cancer, but we plan to update these columns in our final model(s). I ran the model once with age-adjusted incidence rate by county as the target variable and once with age-adjusted mortality rate as the target.

### Data Preprocessing

The data preprocessing for this week was what took the most time. First I dropped the CI Rank column, as this number didn't have meaning for our model. Then I dropped all rows that had a * in place of a number for the rates and 5-year trends. We may look at an alternative to dropping these rows entirely, but for the time being this was the only solution. Next I assigned incidence/mortality rate to a target variable (y), and converted this data from a string dtype to float. Then I created the features variable (X), which held the state, race/ethnicity, and recent 5-year trend. I also converted the recent 5-year trend column from string to float. Lastly, I transformed the X dataframe by creating dummy variables for state and race/ethinicity. 

NOTE: we did not split the data into training and testing sets because this step is not typically included in a linear regression model. 

### Model Performance

This version of the model did not perform well, but that was to be expected since the dataset is far from complete. Both the incidence and mortality regressions produced extremely low r-squared scores (0.099 for incidence and 0.115 for mortality). While this is slightly discouraging, it ultimately won't be problematic unless this extremely poor performance continues after adding additional columns and rows to the dataset. Our hope is that factors that aren't yet included in the regression (MUA index, income levels, gender, etc.) will ultimately be the regressors that tell most of the story and lead to higher r-squared values. At this point the obvious benfit of the model is that it's able to produce a nice clean prediction for incidence/mortality rates based on the factors mentioned above. The biggest hurdle going forward will be improving model performance/accuracy by selecting the right combination of regressors and also playing around with potential intearction terms. Additionally, we will also research other ML models that serve as alternatives to an OLS regression.


#### Key Questions
1. MUA index relates to Cancer incidence and mortality  
2. Does that relationship differ based on Gender, Age, Ethnicity, and Income Level
3. Which factors are the most prevalent in relation to Cancer incidence and mortality

#### Individual Branches
- abramo_data_analysis
- bowman_data_analysis
- leyzer_data_analysis
- cook_data_analysis
- amar_data_analysis

#### Resources 
- [State Cancer Profile](https://www.statecancerprofiles.cancer.gov/)
- [Health Resources and Services Administration](https://data.hrsa.gov/tools/shortage-area/mua-find)
- [US County Populations 2022](https://worldpopulationreview.com/us-counties)
- [US States - Ranked by Population 2022](https://worldpopulationreview.com/states)
- [Median Household Income by State 2022](https://worldpopulationreview.com/state-rankings/median-household-income-by-state)

![Image](https://cdn10.bigcommerce.com/s-npe4l/products/236/images/191/M-LR-CA4C---High__74297.1456496284.1280.1280.jpg?c=2)
[^2]

[^1]: By using these data, you signify your agreement to comply with the following statutorily based requirements.
    - The Public Health Service Act (42 U.S.C. 242m(d)) provides that the data collected by the National Center for Health Statistics (NCHS) may be used only for the purpose for which they were obtained; any effort to determine the identity of any reported cases, or to use the information for any purpose other than for statistical reporting and analysis, is against the law. The National Program of Cancer Registries (NPCR), Centers for Disease Control and Prevention (CDC), has obtained an assurance of confidentiality pursuant to Section 308(d) of the Public Health Service Act, 42 U.S.C. 242m(d). This assurance provides that identifiable or potentially identifiable data collected by the NPCR may be used only for the purpose for which they were obtained unless the person or establishment from which they were obtained has consented to such use. Any effort to determine the identity of any reported cases, or to use the information for any purpose other than statistical reporting and analysis, is a violation of the assurance.

[^2]: Cover Image Source - https://magnetamerica.com/cancer-awareness-rainbow-ribbon-magnet/
