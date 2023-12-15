--WE FIND OUT THE COUNT OF DIFFERENT FUEL TYPES AS PRIMARY, SECONDARY, TERTIARY, QUARTARY FUELS

SELECT FUEL_1 AS FUEL,
	COUNT(FUEL_1) AS COUNT_AS_FUEL_1,
	COUNT(FUEL_2) AS COUNT_AS_FUEL_2,
	COUNT(FUEL_3) AS COUNT_AS_FUEL_3,
	COUNT(FUEL_4) AS COUNT_AS_FUEL_4
FROM FUEL_TYPES
GROUP BY FUEL_1
ORDER BY COUNT_AS_FUEL_1 DESC