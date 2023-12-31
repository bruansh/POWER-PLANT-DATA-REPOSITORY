SELECT COUNTRY_LONG AS COUNTRY,
	MAX(CAPACITY.CAPACITY_GW) AS MAX_CAPACITY,
	SUM(CAPACITY_GW) / COUNT(DISTINCT CAPACITY.ID) AS AVG_CAPACITY
FROM CAPACITY
INNER JOIN NAME_LOCATION ON CAPACITY.ID = NAME_LOCATION.ID
GROUP BY COUNTRY_LONG;