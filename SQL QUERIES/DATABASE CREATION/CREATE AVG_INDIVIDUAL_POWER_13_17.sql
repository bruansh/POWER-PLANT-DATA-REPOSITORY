CREATE TABLE AVG_INDIVIDUAL_POWER_13_17 AS
(SELECT ID, 
        (POWER_OUT_2013+POWER_OUT_2014+POWER_OUT_2015+
 POWER_OUT_2016+POWER_OUT_2017)/5 AS AVG_POWER_OUT_13_17
FROM POWER_GENERATED_GOLD)