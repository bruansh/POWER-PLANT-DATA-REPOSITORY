-- NOW WE FIND OUT THE AVERAGE POWER PRODUCED BY FUEL

SELECT FUEL,
	(TOTAL_OUTPUT_2013_GWH + TOTAL_OUTPUT_2014_GWH + TOTAL_OUTPUT_2015_GWH + 
	 TOTAL_OUTPUT_2016_GWH + TOTAL_OUTPUT_2017_GWH) / 5 AS AVG_OUTPUT_13_TO_17_GWH
FROM TOTAL_POWER_BY_FUEL
ORDER BY AVG_OUTPUT_13_TO_17_GWH DESC;

--RESULTS SAVED AS A CSV FILE