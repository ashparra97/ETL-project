# ETL-project

## Summary 

Two sources of data were used for this project, both pulled from Kaggle. The first .csv included information on number of climatological disasters by country, as well as number of deaths and people affected in each country. The data was binned by decades. The second .csv included information on greenhouse gas emission by country, including the amount of emissions by year.

The two .csv were cleaned up separately using pandas. Using pgAdmin4, the two csvs were imported into databases and joined on Country ID. Final tables were created from these databases.
