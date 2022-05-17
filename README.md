![Image](https://cdn10.bigcommerce.com/s-npe4l/products/236/images/191/M-LR-CA4C---High__74297.1456496284.1280.1280.jpg?c=2)[^2]
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
    - Webscraping median income per county / state
- *Plans on data cleaning (if needed)*
    - Using Pandas to load data and clean relevent data points
        - Data Points:
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

#### Individual Branches
- abramo_data_analysis
- bowman_data_analysis
- leyzer_data_analysis
- cook_data_analysis
- amar_data_analysis


[^1]: By using these data, you signify your agreement to comply with the following statutorily based requirements.
    - The Public Health Service Act (42 U.S.C. 242m(d)) provides that the data collected by the National Center for Health Statistics (NCHS) may be used only for the purpose for which they were obtained; any effort to determine the identity of any reported cases, or to use the information for any purpose other than for statistical reporting and analysis, is against the law. The National Program of Cancer Registries (NPCR), Centers for Disease Control and Prevention (CDC), has obtained an assurance of confidentiality pursuant to Section 308(d) of the Public Health Service Act, 42 U.S.C. 242m(d). This assurance provides that identifiable or potentially identifiable data collected by the NPCR may be used only for the purpose for which they were obtained unless the person or establishment from which they were obtained has consented to such use. Any effort to determine the identity of any reported cases, or to use the information for any purpose other than statistical reporting and analysis, is a violation of the assurance.

[^2] Image Source - https://magnetamerica.com/cancer-awareness-rainbow-ribbon-magnet/
