--Question 1 : What is the overall trend in liquor sales in Iowa over the years covered by this dataset?

SELECT 
EXTRACT (YEAR FROM date ) AS year,
ROUND(SUM(sale_dollars),2) AS sales 
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY year
ORDER BY year ASC
LIMIT 1000;

-- Question 2: Which are the most popular liquor categories and brands sold in IOWA?
--category
SELECT category_name,
COUNT(*) AS num
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY category_name 
ORDER BY num DESC
LIMIT 10;

--brands
SELECT item_description,
COUNT(*) AS num
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY item_description 
ORDER BY num DESC
LIMIT 10;

--Question 3: How has the popularity of brand changed over time?
WITH CTE AS (
  SELECT EXTRACT (YEAR FROM date) AS year, 
  item_description,
  COUNT(*) AS num_sold
  FROM `bigquery-public-data.iowa_liquor_sales.sales`
  GROUP BY year, item_description
)
SELECT * 
FROM( 
  SELECT * , 
  DENSE_RANK() OVER (PARTITION BY year ORDER BY num_sold DESC ) AS rank 
  FROM CTE 
) ranked 
WHERE rank <= 10
ORDER BY year, rank;


-- Question 4 : Are there any seasonal patterns in liquor sales?
SELECT 
 EXTRACT (MONTH FROM date) as month,
 SUM(sale_dollars) as sales
 FROM  `bigquery-public-data.iowa_liquor_sales.sales`
 GROUP BY month
 ORDER BY month ASC ; 

-- Question 5: Which Country has tha highest sales?
SELECT
county, 
SUM(sale_dollars) as sales
FROM  `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY county
ORDER BY sales DESC
LIMIT 10;

-- Question 6: Average Price of Liquor by Category?
SELECT 
 category_name,
 ROUND(AVG(sale_dollars / bottles_sold),2) AS avg_price
FROM  `bigquery-public-data.iowa_liquor_sales.sales`
WHERE bottles_sold != 0
GROUP BY category_name
ORDER BY avg_price DESC;

-- Question 7: Which liquor brands have the highest profit margins for retailers?

SELECT 
  item_description AS brand,
  ROUND (AVG(state_bottle_cost),2) AS avg_cost,
  ROUND(AVG(state_bottle_retail),2) AS avg_revenue,
  ROUND(AVG(state_bottle_retail)- AVG(state_bottle_cost),2)
  AS profit,
  ROUND(((AVG(state_bottle_retail)- AVG (state_bottle_cost))/ AVG (state_bottle_retail))* 100,2) AS margin
  FROM `bigquery-public-data.iowa_liquor_sales.sales`
  GROUP BY item_description
  ORDER BY margin DESC
  LIMIT 10;





