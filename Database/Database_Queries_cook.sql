-- Create and Load Tables
CREATE TABLE Age_Incidence (
	Average_Annual_Count INT NOT NULL,
	Recent_Trend VARCHAR NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	five_Year_Trend_Rates VARCHAR NOT NULL,	
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Age, County_State)
);
CREATE TABLE Race_Incidence (
	Average_Annual_Count INT NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Race_Ethnicity, County_State)
);
CREATE TABLE Sex_Incidence (
	Average_Annual_Count INT NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Sex, County_State)
);
CREATE TABLE Age_Mortality (
	Average_Annual_Count INT NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Age, County_State)
);
CREATE TABLE Race_Mortality (
	Average_Annual_Count INT NOT NULL,
	Recent_Trend VARCHAR NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	five_Year_Trend_Rates VARCHAR NOT NULL,	
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Race_Ethnicity, County_State)
);
CREATE TABLE Sex_Mortality (
	Average_Annual_Count INT NOT NULL,
	Primary_State_Name VARCHAR NOT NULL,
	Cancer VARCHAR NOT NULL,
	Race_Ethnicity VARCHAR NOT NULL,	
	Sex VARCHAR NOT NULL,		
	Age VARCHAR NOT NULL,
	Age_Adjusted_Rate VARCHAR NOT NULL,
	County_State VARCHAR NOT NULL,
	PRIMARY KEY ( Sex, County_State)
);
CREATE TABLE MUA_Index (
	Primary_State_Name VARCHAR NOT NULL, 
	County_State VARCHAR NOT NULL,
	Index_of_Medical_Underservice_Score VARCHAR NOT NULL,
	PRIMARY KEY (County_State)
);
CREATE TABLE Census_Population (
	Primary_State_Name VARCHAR NOT NULL,	
	County_State VARCHAR NOT NULL,	
	POPESTIMATE2015 INT NOT NULL,	
	POPESTIMATE2016 INT NOT NULL,	
	POPESTIMATE2017 INT NOT NULL,	
	POPESTIMATE2018 INT NOT NULL,	
	POPESTIMATE2019 INT NOT NULL,
	PRIMARY KEY (County_State)
);
CREATE TABLE Median_Income (	
	County_State VARCHAR NOT NULL,	
	Abbrv VARCHAR NOT NULL,
	Median_Household_Income_2015 INT NOT NULL,
	Median_Household_Income_2016 INT NOT NULL,
	Median_Household_Income_2017 INT NOT NULL,
	Median_Household_Income_2018 INT NOT NULL,
	Median_Household_Income_2019 INT NOT NULL,
	PRIMARY KEY (County_State)
);

SELECT * FROM Age_Incidence;
SELECT * FROM Race_Incidence;
SELECT * FROM Sex_Incidence;
SELECT * FROM Age_Mortality;
SELECT * FROM Race_Mortality;
SELECT * FROM Sex_Mortality;
SELECT * FROM MUA_Index;
SELECT * FROM Census_Population;
SELECT * FROM Median_Income;


DROP TABLE Age_Incidence CASCADE;
DROP TABLE Race_Incidence CASCADE;
DROP TABLE Sex_Incidence CASCADE;
DROP TABLE Age_Mortality CASCADE;
DROP TABLE Race_Mortality CASCADE;
DROP TABLE Sex_Mortality CASCADE;
DROP TABLE MUA_Index CASCADE;
DROP TABLE Census_Population CASCADE;
DROP TABLE Median_Income CASCADE;

--Join Tables
-- Age_Incidence
Select ai.Average_Annual_Count,
	ai.Recent_Trend,
	ai.Primary_State_Name,
	ai.Cancer,
	ai.Race_Ethnicity,
	ai.Sex,		
	ai.Age,
	ai.Age_Adjusted_Rate,
	ai.five_Year_Trend_Rates,	
	ai.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Abbrv,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Age_Incidence_Cancer_DB
FROM Age_Incidence as ai
LEFT JOIN MUA_Index as mi
ON ai.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON ai.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON ai.County_State = hi.County_State
-- Race_Incidence
Select ri.Average_Annual_Count,
	ri.Primary_State_Name,
	ri.Cancer,
	ri.Race_Ethnicity,
	ri.Sex,		
	ri.Age,
	ri.Age_Adjusted_Rate,	
	ri.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Abbrv,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Race_Incidence_Cancer_DB
FROM Race_Incidence as ri
LEFT JOIN MUA_Index as mi
ON ri.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON ri.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON ri.County_State = hi.County_State
-- Sex_Incidence
Select si.Average_Annual_Count,
	si.Primary_State_Name,
	si.Cancer,
	si.Race_Ethnicity,
	si.Sex,		
	si.Age,
	si.Age_Adjusted_Rate,	
	si.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Abbrv,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Sex_Incidence_Cancer_DB
FROM Sex_Incidence as si
LEFT JOIN MUA_Index as mi
ON si.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON si.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON si.County_State = hi.County_State
-- Age_Mortality
Select am.Average_Annual_Count,
	am.Primary_State_Name,
	am.Cancer,
	am.Race_Ethnicity,
	am.Sex,		
	am.Age,
	am.Age_Adjusted_Rate,	
	am.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Abbrv,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Age_Mortality_Cancer_DB
FROM Age_Mortality as am
LEFT JOIN MUA_Index as mi
ON am.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON am.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON am.County_State = hi.County_State
-- Race_Mortality
Select rm.Average_Annual_Count,
	rm.Recent_Trend,
	rm.Primary_State_Name,
	rm.Cancer,
	rm.Race_Ethnicity,
	rm.Sex,		
	rm.Age,
	rm.Age_Adjusted_Rate,
	rm.five_Year_Trend_Rates,
	rm.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Race_Mortality_Cancer_DB
FROM Race_Mortality as rm
LEFT JOIN MUA_Index as mi
ON rm.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON rm.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON rm.County_State = hi.County_State
-- Sex_Mortality
Select sm.Average_Annual_Count,
	sm.Primary_State_Name,
	sm.Cancer,
	sm.Race_Ethnicity,
	sm.Sex,		
	sm.Age,
	sm.Age_Adjusted_Rate,
	sm.County_State,
	mi.Index_of_Medical_Underservice_Score,	
	cp.POPESTIMATE2015,	
	cp.POPESTIMATE2016,	
	cp.POPESTIMATE2017,	
	cp.POPESTIMATE2018,	
	cp.POPESTIMATE2019,
	hi.Median_Household_Income_2015,
	hi.Median_Household_Income_2016,
	hi.Median_Household_Income_2017,
	hi.Median_Household_Income_2018,
	hi.Median_Household_Income_2019
INTO Sex_Mortality_Cancer_DB
FROM Sex_Mortality as sm
LEFT JOIN MUA_Index as mi
ON sm.County_State = mi.County_State
LEFT JOIN Census_Population as cp
ON sm.County_State = cp.County_State
LEFT JOIN Median_Income as hi
ON sm.County_State = hi.County_State

SELECT * FROM Age_Incidence_Cancer_DB;
SELECT * FROM Race_Incidence_Cancer_DB;
SELECT * FROM Sex_Incidence_Cancer_DB;
SELECT * FROM Age_Mortality_Cancer_DB;
SELECT * FROM Race_Mortality_Cancer_DB;
SELECT * FROM Sex_Mortality_Cancer_DB;

DROP TABLE Age_Incidence_Cancer_DB CASCADE;
DROP TABLE Race_Incidence_Cancer_DB CASCADE;
DROP TABLE Sex_Incidence_Cancer_DB CASCADE;
DROP TABLE Age_Mortality_Cancer_DB CASCADE;
DROP TABLE Race_Mortality_Cancer_DB CASCADE;
DROP TABLE Sex_Mortality_Cancer_DB CASCADE;

