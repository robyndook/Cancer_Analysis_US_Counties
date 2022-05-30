# Segment 2 

## Overview

The final machine learning submission for segment 2 includes six total models with two variations (linear regession and decision tree regression) for each model. There are three models that predict age-adjusted cancer indicence
rates per county and three models that predict age-adjusted cancer mortality rates per county. For both incidence and mortality we differentiated the three models by allowing for variety in one of age, race/ethicity and gender while setting the other two to the all-inclusive value.
For example, in one model the age column held values for four different age ranges while race/ethnicity was held to all races and sex was held to all sexes. In addition to each model containing one of these three features, we also added the Medically Underserviced Area index measurement
as an additional regressor. 

We chose these features because we believe that each of race/sex/age have an impact on cancer incicdence/mortality and it's worth checking to see if any of these characteristics will have a statistically significant coefficient.
Additionally, we include MUA index in each model because one of the focuses of our project is to determine whether or not level of medical service is correlated to cancer incidence/mortality rates.
## Data Preprocessing 

Data Preprocessing included the following for each model:

* Remove commas from all values in all columns (this allowed string values to be converted to numeric when needed down the road)
* Remove rows where MUA index value was null
* Create target and features variables
* Change columns in target and features variables from string to float when necessary
* Transform features variable by creating dummy variables for race/sex/age

## Data Splitting

We used the generic train_test_split from sklearn to split the data into training and testing sets for each model. We did not toy around with changing the train/test proportion during segment 2, but we may
tinker with this aspect later down the road to see how impacts model performance.

## Model Selection

The nature of our project and available data has steered us toward some form of linear regression model since we are trying to predict a metric (incidence/mortality rates) on a continuous scale. As a result, we first attempted each model with a basic multiple linear regression. After gathering the coefficients and accuracy scores for each 
linear regression, we ran the models again using a decision tree regressor. In segment 3, we will test additional variations of linear regression to see if they perform better than the two variations we attempted in segment 2.
