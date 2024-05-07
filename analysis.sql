--Problem Statement:

--In our dataset, we have collected information about various books, including their titles, prices, and ratings. 
--We aim to conduct an in-depth analysis of this data to gain insights into the characteristics and trends present among these books in SQL server.

--1. Average Price of Books: Determine the average price of books in the dataset to understand the general pricing trend.

--2. Price Range of Books: Identify the highest and lowest prices of books available to understand the price spread.

--3. Distribution of Ratings: Analyze the distribution of ratings among the books to understand the prevalence of different rating levels.

--4. Top 10 Highest-Rated Books: Identify and list the top 10 highest-rated books with cheapest price among these books to find out cheapest price with highest rating.

--5. Top 10 Expensive Books: Identify and list the top 10 most expensive books with lowest Rating to avoid buying those books.

--6. Correlation between Price and Rating: Investigate whether there is any relationship between book prices and their ratings to understand if higher-priced books tend to receive higher ratings.

--7. Average Price by Rating Category: check books with lower average price and what are their rating and books with above average price and their rating
-- to check if lower then average price gets highest rating.

--8. Title Length and Price Relationship**: Explore if there is any relationship between book prices and the lengths of their titles to understand if longer or shorter titles tend to have different pricing.




--1. Average Price of Books: Determine the average price of books in the dataset to understand the general pricing trend.

select avg(Price) as Averge_price
from dbo.bookTable


--2. Price Range of Books: Identify the highest and lowest prices of books available to understand the price spread.
select max(Price) as Highest_price, min(Price) as Lowest_price
from dbo.bookTable

--3. Distribution of Ratings: Analyze the distribution of ratings among the books to understand the prevalence of different rating levels.
select Rating_Star, count(*) total_rating
from dbo.bookTable
group by Rating_Star
order by total_rating desc

--4. Top 10 Highest-Rated Books: Identify and list the top 10 highest-rated books with cheapest price among these books to find out cheapest price with highest rating.
select top 10*
from dbo.bookTable
where Rating_Star = 'Five'
order by Price

--5. Top 10 Expensive Books: Identify and list the top 10 most expensive books with lowest Rating to avoid buying those books.
select top 10*
from dbo.bookTable
where Rating_Star = 'One'
order by Price desc


--6. Correlation between Price and Rating: Investigate whether there is any relationship between book prices and their ratings to understand if higher-priced books tend to receive higher ratings.
select avg(Price) Average_Price, Rating_Star, count(*)
from dbo.bookTable
group by Rating_Star

-- Insights: Average Price above 35 tend to get 4 or more than 5 rating and lower average price then 35 tend to get lower rating than 4




--7. Average Price by Rating Category: check books with lower average price and what are their rating and books with above average price and their rating
	-- to check if lower then average price gets highest rating.

select Rating_Star, count(*) as no_of_rating
from dbo.bookTable
where price < (Select AVG(Price) as AvgPrice from dbo.bookTable)
group by Rating_Star
order by no_of_rating

select Rating_Star, count(*) as no_of_rating
from dbo.bookTable
where price > (Select AVG(Price) as AvgPrice from dbo.bookTable)
group by Rating_Star
order by no_of_rating

-- Insights : Price above Average tends to get higher rating





--8. Title Length and Price Relationship**: Explore if there is any relationship between book prices and the lengths of their titles to understand if longer or shorter titles tend to have different pricing.

with cte as
(
Select Price, LEN(Book_Title) as title_length
from bookTable
where price < (Select AVG(Price) as AvgPrice from dbo.bookTable)
)
Select avg(title_length) as average_title, avg(Price) as avg_price
from cte



with cte2 as
(
Select Price, LEN(Book_Title) as title_length
from bookTable
where price > (Select AVG(Price) as AvgPrice from dbo.bookTable)
)
Select avg(title_length) as average_title, avg(Price) as avg_price
from cte2

--Insights as both price above and lower average has almost similar title length on average