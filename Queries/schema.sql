CREATE TABLE shopping_trends (
	customer_id SERIAL PRIMARY KEY,
	age INT,
	monthly_income INT,
	daily_internet_hours NUMERIC(3,1),
	smartphone_usage_years INT,
	social_media_hours NUMERIC(3,1),
	online_payment_trust_score INT,
	tech_savvy_score INT,
	monthly_online_orders INT,
	monthly_store_visits INT,
	avg_online_spend INT,
	avg_store_spend INT,
	discount_sensitivity INT,
	return_frequency INT,
	avg_delivery_days INT,
	delivery_fee_sensitivity INT,
	free_return_importance INT,
	product_availability_online INT,
	impulse_buying_score INT,
	need_touch_feel_score INT,
	brand_loyalty_score INT,
	environmental_awareness INT,
	time_pressure_level INT,
	gender CHAR(50),
	city_tier CHAR(50),
	shopping_preference CHAR(50)
);

CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
	age INT,
	monthly_income INT,
	gender CHAR(50),
	city_tier CHAR(50)
);

CREATE TABLE shopping_behavior(
	customer_id INT PRIMARY KEY REFERENCES customers(customer_id),
	monthly_online_orders INT,
	monthly_store_visits INT,
	avg_online_spend INT,
	avg_store_spend INT,
	return_frequency INT,
	impulse_buying_score INT,
	avg_delivery_days INT,
	delivery_fee_sensitivity INT
);

CREATE TABLE preferences(
	customer_id INT PRIMARY KEY REFERENCES customers(customer_id),
	online_payment_trust_score INT,
	discount_sensitivity INT,
	free_return_importance INT,
	need_touch_feel_score INT,
	product_availability_online INT,
	brand_loyalty_score INT,
	environmental_awareness INT,
	time_pressure_level INT,
	shopping_preference CHAR(50)
);

CREATE TABLE tech_profile(
	customer_id INT PRIMARY KEY REFERENCES customers(customer_id),
	daily_internet_hours NUMERIC(3,1), 
	smartphone_usage_years INT, 
	social_media_hours NUMERIC(3,1), 
	tech_savvy_score INT
);




