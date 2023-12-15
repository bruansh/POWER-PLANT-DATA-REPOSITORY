CREATE TABLE FRACT_POW_BY_FUEL_COUNTRY AS 
SELECT 
    COUNTRY_LONG AS COUNTRY,
    SUM(CASE WHEN FUEL_1 = 'Coal' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_COAL,
    SUM(CASE WHEN FUEL_1 = 'Cogeneration' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_COGENERATION,
    SUM(CASE WHEN FUEL_1 = 'Wind' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_WIND,
    SUM(CASE WHEN FUEL_1 = 'Solar' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_SOLAR,
    SUM(CASE WHEN FUEL_1 = 'Storage' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_STORAGE,
    SUM(CASE WHEN FUEL_1 = 'Biomass' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_BIOMASS,
    SUM(CASE WHEN FUEL_1 = 'Hydro' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_HYDRO,
    SUM(CASE WHEN FUEL_1 = 'Other' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_OTHER,
    SUM(CASE WHEN FUEL_1 = 'Gas' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_GAS,
    SUM(CASE WHEN FUEL_1 = 'Waste' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_WASTE,
    SUM(CASE WHEN FUEL_1 = 'Geothermal' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_GEOTHERMAL,
    SUM(CASE WHEN FUEL_1 = 'Petcoke' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_PETCOKE,
    SUM(CASE WHEN FUEL_1 = 'Oil' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_OIL,
    SUM(CASE WHEN FUEL_1 = 'Nuclear' THEN AVG_POWER_OUT_13_17 ELSE 0 END) AS POWER_FROM_NUCLEAR
FROM
    FUEL_TYPES
INNER JOIN NAME_LOCATION ON FUEL_TYPES.ID = NAME_LOCATION.ID
INNER JOIN AVG_INDIVIDUAL_POWER_13_17 ON FUEL_TYPES.ID = AVG_INDIVIDUAL_POWER_13_17.ID
GROUP BY COUNTRY_LONG;

-- Add the new column to the existing table
ALTER TABLE FRACT_POW_BY_FUEL_COUNTRY
ADD COLUMN TOTAL_POWER_FROM_ALL_FUELS NUMERIC;

-- Update the new column with the sum of individual power columns
UPDATE FRACT_POW_BY_FUEL_COUNTRY
SET TOTAL_POWER_FROM_ALL_FUELS = 
    COALESCE(POWER_FROM_COAL, 0) + COALESCE(POWER_FROM_COGENERATION, 0) + COALESCE(POWER_FROM_WIND, 0) + COALESCE(POWER_FROM_SOLAR, 0) +
    COALESCE(POWER_FROM_STORAGE, 0) + COALESCE(POWER_FROM_BIOMASS, 0) + COALESCE(POWER_FROM_HYDRO, 0) + COALESCE(POWER_FROM_OTHER, 0) +
    COALESCE(POWER_FROM_GAS, 0) + COALESCE(POWER_FROM_WASTE, 0) + COALESCE(POWER_FROM_GEOTHERMAL, 0) + COALESCE(POWER_FROM_PETCOKE, 0) +
    COALESCE(POWER_FROM_OIL, 0) + COALESCE(POWER_FROM_NUCLEAR, 0);

-- Display the updated table
SELECT * FROM FRACT_POW_BY_FUEL_COUNTRY;

