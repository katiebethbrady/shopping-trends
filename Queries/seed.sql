INSERT INTO customers (customer_id, age, monthly_income, gender, city_tier)
SELECT customer_id, age, monthly_income, gender, city_tier
FROM shopping_trends;

INSERT INTO preferences (customer_id, online_payment_trust_score, discount_sensitivity, free_return_importance, need_touch_feel_score, product_availability_online, brand_loyalty_score, environmental_awareness, time_pressure_level, shopping_preference)
SELECT customer_id, online_payment_trust_score, discount_sensitivity, free_return_importance, need_touch_feel_score, product_availability_online, brand_loyalty_score, environmental_awareness, time_pressure_level, shopping_preference
FROM shopping_trends;

INSERT INTO shopping_behavior (customer_id, monthly_online_orders, monthly_store_visits, avg_online_spend, avg_store_spend, return_frequency, impulse_buying_score, avg_delivery_days, delivery_fee_sensitivity)
SELECT customer_id, monthly_online_orders, monthly_store_visits, avg_online_spend, avg_store_spend, return_frequency, impulse_buying_score, avg_delivery_days, delivery_fee_sensitivity
FROM shopping_trends;

INSERT INTO tech_profile (customer_id, daily_internet_hours, smartphone_usage_years, social_media_hours, tech_savvy_score)
SELECT customer_id, daily_internet_hours, smartphone_usage_years, social_media_hours, tech_savvy_score
FROM shopping_trends;