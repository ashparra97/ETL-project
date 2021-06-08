CREATE TABLE GHG (
	CountryID INT PRIMARY KEY,
	Year INT,
	Decade VARCHAR(20) NOT NULL,
	GHG_emission_per_1000t FLOAT,
	GHG_decade_avg FLOAT
);

CREATE TABLE Disasters (
	CountryID INT PRIMARY KEY,
	Countries_or_areas VARCHAR(50) NOT NULL,
	Decade VARCHAR(20) NOT NULL,
	Disaster_occurances INT,
	Total_deaths INT,
	Persons_affected INT
);

SELECT * FROM disasters;

SELECT * FROM ghg;

-- Table names ultimately had to be altered because they were not being recognized by the query
ALTER TABLE ghg
RENAME COLUMN "Countries or areas" TO Countries_or_areas;

ALTER TABLE ghg
RENAME COLUMN "GHG Decade Mean" TO GHG_Decade_Mean;

ALTER TABLE ghg
RENAME COLUMN "Decades" TO Decade;

ALTER TABLE disasters
RENAME COLUMN "CountryID" TO CountryID;

ALTER TABLE ghg
RENAME COLUMN "CountryID" TO CountryID;

ALTER TABLE disasters
RENAME COLUMN "Countries or areas" TO Countries_or_areas;

ALTER TABLE disasters
RENAME COLUMN "Decade" TO Decade;

ALTER TABLE disasters
RENAME COLUMN "Disaster_occurances" TO Disaster_occurances;

ALTER TABLE disasters
RENAME COLUMN "Total_deaths" TO Total_deaths;

ALTER TABLE disasters
RENAME COLUMN "Persons_affected" TO Persons_affected;

-- Good 
SELECT DISTINCT d.CountryID, g.Countries_or_areas, d.Decade, g.GHG_Decade_Mean, d.Disaster_occurances, d.Total_deaths, d.Persons_affected
FROM disasters AS d
INNER JOIN ghg AS g
	ON d.CountryID = g.CountryID
WHERE
	d.Decade = g.Decade
ORDER BY
	Countries_or_areas,
	Decade;