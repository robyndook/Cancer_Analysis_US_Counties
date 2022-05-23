# Cancer_Treatment_Centers_California

## Segment 2, Week 1 Update:

### Summary 

This week we were able to create code for a multiple linear regression machine learning model. We selected this model because it is capable of predicting incidence or mortality rates based on a variety of other factors. A classification model, in comparison, would not have been appropriate because incidence/mortality rates aren't divided up into groups but instead run on a continuous scale. Initially we ran this model using the Scikit-learn library and then we ran it again with the Statsmodels library. We ran the model with our most up-to-date incidence and mortality datasets, which include county name, average annual count (either incidence or mortality), state name, type of cancer, race/ethnicity, sex, age group, age-adjusted rate (either incidene or mortality), and recent five-year trend in rate. NOTE: the current dataset does not distinguish sex, age, or type of cancer, but we plan to update these columns in our final model(s). I ran the model once with age-adjusted incidence rate by county as the target variable and once with age-adjusted mortality rate as the target.

### Data Preprocessing

The data preprocessing for this week was what took the most time. First I dropped the CI Rank column, as this number didn't have meaning for our model. Then I dropped all rows that had a * in place of a number for the rates and 5-year trends. We may look at an alternative to dropping these rows entirely, but for the time being this was the only solution. Next I assigned incidence/mortality rate to a target variable (y), and converted this data from a string dtype to float. Then I created the features variable (X), which held the state, race/ethnicity, and recent 5-year trend. I also converted the recent 5-year trend column from string to float. Lastly, I transformed the X dataframe by creating dummy variables for state and race/ethinicity. 

NOTE: we did not split the data into training and testing sets because this step is not typically included in a linear regression model. 

### Model Performance

This version of the model did not perform well, but that was to be expected since the dataset is far from complete. Both the incidence and mortality regressions produced extremely low r-squared scores (0.099 for incidence and 0.115 for mortality). While this is slightly discouraging, it ultimately won't be problematic unless this extremely poor performance continues after adding additional columns and rows to the dataset. Our hope is that factors that aren't yet included in the regression (MUA index, income levels, gender, etc.) will ultimately be the regressors that tell most of the story and lead to higher r-squared values. At this point the obvious benfit of the model is that it's able to produce a nice clean prediction for incidence/mortality rates based on the factors mentioned above. The biggest hurdle going forward will be improving model performance/accuracy by selecting the right combination of regressors and also playing around with potential intearction terms. Additionally, we will also research other ML models that serve as alternatives to an OLS regression. 
