# Bikestore Sales Analysis (2016-2018)


This project describes an exploratory analysis on the sales data of a bike sales company between the years of 2016 and 2018 

This is a dataset I got from https://www.sqlservertutorial.net/sql-server-sample-database/ which describes the pattern of sales (between 2016 and 2018) from the database of a bike sales company across 3 different store locations in the United States.

**Steps taken:**

1. I downloaded the SQL dataset which was saved as MicrosoftSQLserver. I use MySQL as my RDBMS, so I had to rewrite the create and load queries in a way that MySQL would understand being that it was originally written in Microsoft SSMS dialect.  

2.	Data Cleaning: The dataset was relatively clean, so there was not a lot to do by way of cleaning, except for a date datatype reformatting on Excel. The date was originally formatted as 'YMD' in SQL, therefore, I had to reformat it to 'DMY' in Excel, using the 'text-to-column' function.

3.	Perform EDA based on the problem statement from the challenge, using SQL and subsequently Excel. I wrote the queries to tackle the problem statements (which I will include a link to), then further ran the analysis using pivot tables on excel.


4.	Visualize the analysis using Excel charts and graphs.
