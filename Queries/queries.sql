--SQL Practice

--Exercise 1: Select only age, gender, shopping_preference for all rows
SELECT age, gender, shopping_preference FROM shopping_trends;

--Exercise 2: Find all customers who prefer online shopping
SELECT * FROM shopping_trends
WHERE shopping_preference = 'Online';

--Exercise 3: Find all customers over the age of 40
SELECT * FROM shopping_trends
WHERE age > 40;

--Exercise 4: Sort customers by monthly_income from highest to lowest
SELECT * FROM shopping_trends
ORDER BY monthly_income DESC;

--Exercise 5: Find all customers from a specific city_tier
SELECT * FROM shopping_trends
WHERE city_tier = 'Tier 2'

--Exercise 6: What is the average monthly_income by gender?
SELECT AVG(monthly_income), gender FROM shopping_trends
GROUP BY gender;

--Exercise 7: How many customers prefer each shopping_preference?
SELECT COUNT(*), shopping_preference FROM shopping_trends
GROUP BY shopping_preference;

--Exercise 8: What is the highest and lowest avg_online_spend?
SELECT MIN(avg_online_spend), MAX(avg_online_spend) FROM shopping_trends;

--Exercise 9: Which city_tier has the highest average brand_loyalty_score?
SELECT AVG(brand_loyalty_score), city_tier FROM shopping_trends
GROUP BY city_tier
ORDER BY AVG(brand_loyalty_score) DESC;

--Exercise 10: Find the average daily_internet_hours for customers who shop online vs in-store.
SELECT AVG(daily_internet_hours), shopping_preference FROM shopping_trends
WHERE shopping_preference IN ('Online', 'Store')
GROUP BY shopping_preference

--Exercise 11: Find city tiers where the average monthly_online_orders is greater than 5.
SELECT city_tier, AVG(monthly_online_orders) FROM shopping_trends
GROUP BY city_tier
HAVING AVG(monthly_online_orders) > 5;

--Exercise 12: Find customers with a discount_sensitivity above average.
SELECT * FROM shopping_trends
WHERE discount_sensitivity > (SELECT AVG(discount_sensitivity) FROM shopping_trends);

--Exercise 13: Find customers where avg_online_spend is greater than avg_store_spend.
SELECT * FROM shopping_trends
WHERE avg_online_spend > avg_store_spend;

--Exercise 14: Find customers whose monthly_income is above the overall average.
SELECT * FROM shopping_trends
WHERE monthly_income > (SELECT AVG(monthly_income) FROM shopping_trends);

--Exercise 15: Rank customers by monthly_online_orders within each city_tier.
SELECT DISTINCT *, 
RANK() OVER (PARTITION BY city_tier ORDER BY monthly_online_orders) AS orders_rank
FROM shopping_trends;

--Exercise 16: Find the top 3 spenders by avg_online_spend
SELECT customer_id, avg_online_spend FROM shopping_trends
ORDER BY avg_online_spend DESC LIMIT 3;

--Exercise 17: What percentage of customers prefer each shopping_preference?
SELECT shopping_preference, (COUNT(*) * 100.0 / (SELECT COUNT(*)  as total_num_customers FROM shopping_trends)) as percentage
FROM shopping_trends
GROUP BY shopping_preference;
