# All my changes will be in here

# Webscraping progress

## Incidence scrape

### 051822

The scrape is almost done to generate the dataframes for the cancer aspect of the scrape. The only issue is determining why the if statements are throwing off the variables. Maybe flipping the variables will help?

### 052422

Progress has been made on the webscraping of this data. The values have been scraped by runnning each variable separately. Now each variable needs to be selected to be cleaned of any * and the CI Rank needs to be dropped. Tomorrow I will run each webscrape again and MAKE sure I save each unclean file so that I do not need to continue to scrape the data over and over.

## Mortality scrape

### 051822

When Incidence scrape is done then all that will be left is to replace code to reflect mortality.

### 052422

Same task from incidence needs to occur in Mortality data.

## MUA

### 051822

Conceptualization of this scrape has occurred. I will need to focus more on internal features rather than collecting dataframes the usual way. HTML research completed now just need to figure out how to manipulate options for select lines.

### 052422

The process of creating the table data is a little bit harder in the MUA data. When I run the code I am able to select for each given feature and have the click function work. Now I need to determine how to scrape the table at this point. Particularly in a series or into a Dataframe that I can concatenate. Scraping for the table may be found in selenium over splinter database.

## Data cleaning