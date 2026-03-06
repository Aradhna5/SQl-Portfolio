create database Superstore ;
use superstore ;

'view dataset'
select * from superstore.`sample - superstore`
limit 10;
RENAME TABLE `sample - superstore` TO superstore_data;
'Analysis Queries'
1. Total Sales
select sum(sales) as total_sales
from superstore_data;

2. sales by category 
 
select category, sum(sales) as total_sales 
from superstore_data
group by category
order by total_sales DESC ;

3. Top 10 products by sales 

SELECT 'Product Name', SUM(sales) AS `total sales`
FROM superstore_data
GROUP BY 'Product Name'
ORDER BY `total sales` DESC
LIMIT 10;

describe superstore_data ;

4 Sales by Region

SELECT region, SUM(sales) AS total_sales
FROM superstore_data
GROUP BY region
ORDER BY total_sales DESC;

5 Profit by Category

select category, sum(profit) as total_profit
from superstore_data
group by category 
order by total_profit DESC;

6. Monthly sales trend 

select year('order date') as year,
month('order date') as month, sum(sales) as total_sales
from superstore_data
group by year, month
order by year, month;