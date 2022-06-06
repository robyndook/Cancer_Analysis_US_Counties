# Segment 3 Written Report

## Overview 

For segment 3, the most important update we executed was adding median county household income for the years 2015-2019 to our databasea. This addition made it so that for every regression that 
included MUA index, we could run an analogous regression that replaces MUA index with median household income (to be specific, we averaged the median incomes from 2015-2019 and used this metric in our regressions).
Additionally, we split each of the age regressions into two separate regressions, which we will go into further detail on in the Data Preprocessing section. Lastly, for each of the three demographic characteristics
in our database (age, sex, and race), we decided to regress mortality and incidence on each characteristic without the MUA index or income. These regressions can be found in the Seg3_No_MUA_INC folder, but they ultimately won't be
discussed further because they didn't add much in terms of helping us answer our questions. In all, there are 8 regressions that perform well (produce high r-squared values): Incidence regressed on MUA index and age (<65/65+ and <50/50+),
mortality regressed on MUA index and age (<65/65+ and <50/50+), incidence regressed on median income and age (<65/65+ and <50/50+), and mortaity regressed on median income and age (<65/65+ and <50/50+). 

## Data Preprocessing

For data preprocessing for segment 3, we executed all of the same steps as segment 2 for each regression:


* Remove commas from all values in all columns (this allowed string values to be converted to numeric when needed down the road)
* Remove rows where MUA index value was null
* Create target and features variables
* Change columns in target and features variables from string to float when necessary
* Transform features variable by creating dummy variables for race/sex/age

Furthermore, we also added a column that holds the 5-year average median income for each county from 2015-2019. This step involved adding up the individual median incomes for each of the 5 years and then dividing by 5. 

Additonally, we split each age regression into two separate regressions, where one regression included <65 and 65+ for age values and the other regression included <50 and 50+ for age values. This added a step in data preprocessing since we needed to filter out the <65/65+ age values for the <50/50+ regression and vice versa.

Lastly, we also added a preprocessing step for each of the race regressions. For each race regression, we deleted rows where race_ethnicity was equal to "White Non-Hispanic" and "White Hispanic" since we realized that
the information in these data points was already included in each row where race_ethnicity was equal to "White (includes Hispanic)."

## Data Splitting

For finding the model r-squared scores with sklearn, we used the standard train_test_split function to split the data. 
For creating the model summaries using statsmodels, we ran the regressions without splitting the data since this step is not required for linear regression. 

## Results

### Model 1: Incidence Regressed on MUA Index and Age (<65 vs. 65+)

![incidence_MUA_age_65](https://user-images.githubusercontent.com/95651156/172029577-81480c05-9846-4d70-9834-ca0e00760085.png)


The above linear regression regression attempts to predict county age-adjusted incidence rate per 100,000 people using the medically underserved area index and age as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 65 and one for groups younger than 65.

The model predicts that a one unit increase in MUA index will actually raise  the age-adjusted incidence rate per 100,000 people by 0.1548, though this metric lacks statistical significance at even the lowest significance levels. However, the model also predicts that, holding other variables constant, over-65 populations will have 1,731 people higher age-adjusted incidence rates per 100,000 people compared to under-65 populations (this metric is found by adding 1229.3217 to -501.3469). 
Altogether, the model is able to fit the data well, producing an r-squared value of 0.954.

### Model 2: Incidence Regressed on MUA Index and Age (<50 vs. 50+)

![incidence_MUA_age_50](https://user-images.githubusercontent.com/95651156/172029584-f8f273c8-d536-453e-9837-09404a19788f.png)

The above linear regression regression attempts to predict county age-adjusted incidence rate per 100,000 people using the medically underserved area index and age as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 50 and one for groups younger than 50.

The model predicts that a one unit increase in MUA index will actually raise the age-adjusted incidence rate per 100,000 people by 0.0735, though this metric lacks statistical significance at even the lowest significance levels. However, the model also predicts that, holding other variables constant, over-50 populations will have 1,247 people higher age-adjusted incidence rates per 100,000 people compared to under-50 populations (this metric is found by adding 866.9156 to 380.4031). Altogether, the model is able to fit the data well, producing an r-squared value of 0.956.

### Model 3: Incidence Regressed on Median Income and Age (<65 vs. 65+)

![incidence_inc_age_65](https://user-images.githubusercontent.com/95651156/172029684-b9de7430-d518-47c3-ac65-bf007fa60257.png)

The above linear regression regression attempts to predict county age-adjusted incidence rate per 100,000 people using median county income and age group as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 65 and one for groups younger than 65.

The model predicts that a one unit increase in the median county income will actually raise the age-adjusted incidence rate per 100,000 by 0.0007 people. While the actual effect of income is extremely small, the coefficient is statistically significant at a 95% significance level.

Additionally, the model predicts age-adjusted incidence rates per 100,000 people to be 1,732 people greater for over-65 populations than under-65 populations holding all other variables constant (this metric is found by adding 1220.8529 to 510.7292). Altogether the model fits the data well, producing an r-squared value of 0.955.

### Model 4: Incidence Regressed on Median Income and Age (<50 vs. 50+)

![incidence_inc_age_50_](https://user-images.githubusercontent.com/95651156/172029751-98072036-0f76-470c-949c-bf6526908fd2.png)

The above linear regression regression attempts to predict county age-adjusted incidence rate per 100,000 people using median county income and age group as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 50 and one for groups younger than 50.

The model predicts that a one unit increase in the median county income will lower the age-adjusted incidence rate per 100,000 by 0.0003 people. While the actual effect of income is extremely small, the coefficient is statistically significant at a 95% significance level.

Additionally, the model predicts age-adjusted incidence rates per 100,000 people to be 1,244 people greater for over-50 populations than under-50 populations holding all other variables constant (this metric is found by adding 870.5609 to 373.2746). Altogether the model fits the data well, producing an r-squared value of 0.956.

### Model 5: Mortality Regressed on MUA Index and Age (<65 vs. 65+)

![age_65_MUA_mortality](https://user-images.githubusercontent.com/95651156/172029846-cafa6051-126e-4d25-8c38-b2b1b8f2c3cb.png)

The above linear regression regression attempts to predict county age-adjusted mortality rate per 100,000 people using the medically underserved area index and age as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 65 and one for groups younger than 65.

The model predicts that a one unit increase in MUA index will lower the age-adjusted mortality rate per 100,000 people by 0.0176, though this metric lacks statistical significance at even the lowest significance levels. However, the model also predicts that, holding other variables constant, over-65 populations will have 869 people higher age-adjusted mortality rates per 100,000 people compared to under-65 populations (this metric is found by adding 598.9633 to 270.1340). Altogether, the model is able to fit the data well, producing an r-squared value of 0.946.



### Model 6: Mortality Regressed on MUA Index and Age (<50 vs. 50+)

![age_50_MUA_mortality](https://user-images.githubusercontent.com/95651156/172029873-d26c4024-251e-4e8d-b987-71335885013a.png)

The above linear regression regression attempts to predict county age-adjusted mortality rate per 100,000 people using the medically underserved area index and age as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 50 and one for groups younger than 50.

The model predicts that a one unit increase in MUA index will lower the age-adjusted mortality rate per 100,000 people by 0.0722, though this metric lacks statistical significance at even the lowest significance levels. However, the model also predicts that, holding other variables constant, over-50 populations will have 540 people higher age-adjusted mortality rates per 100,000 people compared to under-50 populations (this metric is found by adding 367.0931 to 172.7250). Altogether, the model is able to fit the data well, producing an r-squared value of 0.915.

### Model 7: Mortality Regressed on Median Income and Age (<65 vs. 65+) 

![age_65_inc_mortality](https://user-images.githubusercontent.com/95651156/172030019-37e29fab-bb83-47a6-ba95-cc39bb116e60.png)

The above linear regression regression attempts to predict county age-adjusted mortality rate per 100,000 people using median county income and age group as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 65 and one for groups younger than 65.

The model predicts that a one unit increase in the median county income will lower the age-adjusted mortality rate per 100,000 by 0.0020 people. While the effect of income proves to be statistically significant, its actual impact is miniscule.

Additionally, the model predicts age-adjusted mortality rates per 100,000 people to be 867 people greater for over-65 populations than under-65 populations holding all other variables constant (this metric is found by adding 630.2390 to 236.2793). Altogether the model fits the data well, producing an r-squared value of 0.951.

### Model 8: Mortality Regressed on Median Income and Age (<50vs. 50+)

![age_50_inc_mortality](https://user-images.githubusercontent.com/95651156/172030048-7586b241-d3be-4b0b-af4f-02b04093bd5a.png)

The above linear regression regression attempts to predict county age-adjusted mortality rate per 100,000 people using median county income and age group as the regressors. In this case, we split the age variable up by creating one dummy variable for groups older than 50 and one for groups younger than 50.

The model predicts that a one unit increase in the median county income will lower the age-adjusted mortality rate per 100,000 by 0.0020 people. While the effect of income proves to be statistically significant, its actual impact is miniscule.

Additionally, the model predicts age-adjusted mortality rates per 100,000 people to be 528 people greater for over-50 populations than under-50 populations holding all other variables constant (this metric is found by adding 394.2183 to 133.5046). Altogether the model fits the data well, producing an r-squared value of 0.927.

## Model Selection and Summary
 We decided to stick with linear regression for our model choice because it became apparent that more advance machine learning regression techniques would be unlikely to improve model performance. For example,
 when we tried to use a decision tree regression, r-squared values never improved substantially, and in many cases they were actually lower than the basic linear regression. I think this was the case because more complex machine learning models typically don't improve model performance when datasets are smaller such as the ones we used in our regressions.  We found it more important to spend our time optimizing the basic linear regression models by changing the regressors, editing the data preprocessing, etc.
 
 The benefit of using linear regression is that they can produce a unique prediction for incidence/mortality rates based on a unique set of inputs. That being said, however, while linear regression was the right choice for our model selection, we were limited 
 in that we could not create regressions that included variation in each of sex, age, and race/ethnicity since we weren't able to scrape this data. As a result, the predictive power of each regression was slightly more limited than we had hoped we could create.
 
 In all, despite some of the challenges we faced, our models lead us to conclusive answers to each of our questions:
 
 1. We did not find a statistically significant relationship between cancer mortality/incidence and the medically underserved index.
 2. While gender and race certainly has an impact on cancer mortality/incidence, age is the demographic characteristic accounting for the vast majority of variety in these rates.
 3. We found the impact of median household income on cancer mortality/incidence to be minimal (essentially zero).
