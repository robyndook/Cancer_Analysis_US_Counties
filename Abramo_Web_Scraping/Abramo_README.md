# Webscraping progress

## Incidence and Mortality  scrape

### Goal

The goal of this scrape is to collect the demographic data of incidence and mortality rates across Age, Ethnicity, and Gender per each county of all United States. This will be completed by scraping the data off multiple tables that exist on the statecancerprofile.gov website.

### Plan of Attack

Each table to be scraped exists as a unique url so the plan was to loop through visiting each relevant website and then scrape the full table into a list. This was completed through two nested loops. First through the states and then the specific demographic parameters that were desired for that scrape. When the table was scraped, columns were added to the table to depict each selection that was made and then could be used to determine relevant trends. This process involved scraping all the relevant options from multiple drop down menus into a dictionaty and then applying them after the table scrape to be applied. After all relevant urls were scraped it the list of created DataFrames were concatenated into a relevant master table. Cleaning then occurred for each table to allow for relevant data in columns and column names.

#### Differences in the scrapes

The main differences in the scrapes came down to the number of options in the drop downs and the names of the counties(while some counties had parishes in incidence, others had burroughs in mortality). The url needed to be updated between the two sections of the scrape as the stage of the cancer was not relevant in mortality rates as compared to the incidence rates.

### Results

Each webscrape was completed accounting for 6 separate datasets that had roughly 6000 to 10,000 data points each.

## MUA

### Goal

The goal of this webscrape was to collect the county medically underserved area index numbers and have them correlated to the rest of our datasets for regression testing.

### Plan of Attack

The plan for this webscrape was to have to different sections of html code accounted for. The first was to act as a controller that would select which variables that needed to be applied. The second was to be used to capture the details of the table that is being scraped. When the table is collected it is then added to the preexisting dataframe line by line before cycling to the next state in the list. This process was similar to the incidence/mortality scrapes but rather than nested for loops for changing variables, the values are actually nested for each line and cell in the existing table. Cleaning was then taken care of by a project teammate.

### Results

The data resulted in a dataset of Counties and MUA index. 