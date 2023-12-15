CREATE VIEW WEIGHTED_ESTABLISHED_YEAR_BY_FUEL_COUNT AS
(
    SELECT 
        COMMISSIONING_YEAR,
        Coal * 1490 AS COAL,
        Cogeneration * 78 AS COGENERATION,
        Wind * 67 AS WIND,
        Solar * 28 AS SOLAR,
        Storage * 7 AS STORAGE,
        Biomass * 19 AS BIOMASS,
        Hydro * 471 AS HYDRO,
        Other * 75 AS OTHER,
        Gas * 528 AS GAS,
        Waste * 41 AS WASTE,
        Geothermal * 126 AS GEOTHERMAL,
        Petcoke * 662 AS PETCOKE,
        Oil * 55 AS OIL,
        Nuclear * 7523 AS NUCLEAR
    FROM ESTABLISHED_YEAR_BY_FUEL_COUNT
);
