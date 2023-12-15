CREATE TABLE POWER_OUTPUT_SILVER AS (SELECT GPPD_IDNR AS ID
						   ,generation_gwh_2013 AS REP_OUT_2013	
						   ,generation_gwh_2014 AS REP_OUT_2014	
						   ,generation_gwh_2015 AS REP_OUT_2015
						   ,generation_gwh_2016 AS REP_OUT_2016
						   ,generation_gwh_2017 AS REP_OUT_2017
						   ,generation_gwh_2018 AS REP_OUT_2018
						   ,generation_gwh_2019 AS REP_OUT_2019
						   ,estimated_generation_gwh_2013 AS EST_OUT_2013	
						   ,estimated_generation_gwh_2014 AS EST_OUT_2014	
						   ,estimated_generation_gwh_2015 AS EST_OUT_2015	
						   ,estimated_generation_gwh_2016 AS EST_OUT_2016	
						   ,estimated_generation_gwh_2017 AS EST_OUT_2017
									
								FROM POWER_OUTPUT_BRONZE);