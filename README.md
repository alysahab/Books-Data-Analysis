# Books Data Analysis

This project aims to analyze a dataset containing information about various books, including their titles, prices, and ratings. The analysis is conducted in SQL Server to gain insights into the characteristics and trends present among these books.

## Problem Statement

In our dataset, we have collected information about various books, including their titles, prices, and ratings. We aim to conduct an in-depth analysis of this data to gain insights into the characteristics and trends present among these books in SQL server.

## Questions I answered

1. **Average Price of Books:** Determine the average price of books in the dataset to understand the general pricing trend.

   ![1](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/50f2f843-f805-4c34-9bf6-28e5e2891b17)

2. **Price Range of Books:** Identify the highest and lowest prices of books available to understand the price spread.

   ![2](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/6c939c36-6b34-481e-a466-306185adba05)

3. **Distribution of Ratings:** Analyze the distribution of ratings among the books to understand the prevalence of different rating levels.

   ![3](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/fab93d12-680a-46c0-ad56-f651200089ea)

4. **Top 10 Highest-Rated Books:** Identify and list the top 10 highest-rated books with the cheapest price among these books to find out the cheapest price with the highest rating.

   ![4](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/88446ce4-6199-4698-a342-43c1877d1402)

5. **Top 10 Expensive Books:** Identify and list the top 10 most expensive books with the lowest rating to avoid buying those books.

    ![5](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/631baa2b-1491-4494-b345-be1908b33fc8)

6. **Correlation between Price and Rating:** Investigate whether there is any relationship between book prices and their ratings to understand if higher-priced books tend to receive higher ratings.

    ![6](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/6a1fbcdd-adba-40bc-b451-7d8382423fc4)

   Insights : Average Price above 35 tend to get 4 or more than 5 rating and lower average price then 35 tend to get lower rating than 4

8. **Average Price by Rating Category:** Check books with a lower average price and their rating and books with an above-average price and their rating to check if lower than the average price gets the highest rating.

  ![7a](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/6a2c877e-ee16-4abf-9726-621de824ba3c)

  ![7b](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/0ec67a60-ab35-47d9-9e16-3d2064b6ef6f)

Insights : Price above Average tends to get higher rating

8. **Title Length and Price Relationship:** Explore if there is any relationship between book prices and the lengths of their titles to understand if longer or shorter titles tend to have different pricing.

Less than average book price<br>
![8a](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/5f7d51d8-cc43-42ab-8276-b21fd72f4983)
above then average book price<br>
![8b](https://github.com/alysahab/IPL-Players-and-Teams-Analysis/assets/125446376/39b126fd-6a21-460b-a121-84b9b82361d8)

Insights : as both price above and lower average has almost similar title length on average

## Data Source

The dataset used for this analysis was scraped from the web and contains information about various books, including their titles, prices, and ratings.

## Technologies Used

- SQL Server for data analysis and querying
- Jupyter Notebook for for web scraping using beautiful Soap

## Files in this Repository

- `analysis.sql`: SQL queries for analyzing the dataset and answering the questions listed above.
- `Books_webscraping.ipynb`: Complete code to scrap the books data.
- `Dataset`: Books_data.xlsx.

## Usage

To use this analysis, you can run the `analysis.sql` script in your SQL Server environment after loading the dataset into a suitable table. Adjust the table and column names in the queries as per your dataset schema.
