CREATE TABLE POWER_GENERATED_GOLD AS
	(SELECT ID,
			CASE
							WHEN REP_OUT_2013 IS NULL THEN EST_OUT_2013
							ELSE REP_OUT_2013
			END POWER_OUT_2013,
			CASE
							WHEN REP_OUT_2014 IS NULL THEN EST_OUT_2014
							ELSE REP_OUT_2014
			END POWER_OUT_2014,
			CASE
							WHEN REP_OUT_2015 IS NULL THEN EST_OUT_2015
							ELSE REP_OUT_2015
			END POWER_OUT_2015,
			CASE
							WHEN REP_OUT_2016 IS NULL THEN EST_OUT_2016
							ELSE REP_OUT_2016
			END POWER_OUT_2016,
			CASE
							WHEN REP_OUT_2017 IS NULL THEN EST_OUT_2017
							ELSE REP_OUT_2017
			END POWER_OUT_2017,
			REP_OUT_2018 AS POWER_OUT_2018,
			REP_OUT_2019 AS POWER_OUT_2019
	 
		FROM POWER_OUTPUT_SILVER);