SELECT COUNTRY_LONG AS COUNTRY,
	COUNT(DISTINCT ID) AS NUMBER_OF_POWER_PLANTS
FROM NAME_LOCATION
GROUP BY COUNTRY_LONG
ORDER BY NUMBER_OF_POWER_PLANTS DESC