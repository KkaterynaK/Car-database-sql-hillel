
SELECT * 
FROM users 
WHERE name LIKE '%am%';


SELECT MAX(expense) AS max_expense
FROM cars 
WHERE car_brand = 'Audi';


SELECT car_brand, COUNT(DISTINCT car_model) AS count_models, car_id
FROM cars
WHERE car_brand IN ('Audi', 'BMW')
GROUP BY car_brand, car_id;


SELECT c.car_model, c.car_brand, COUNT(DISTINCT u.user_id) AS user_count
FROM cars c
JOIN users u ON c.car_id = u.car_id
GROUP BY c.car_model, c.car_brand;


SELECT DISTINCT u.name
FROM users u
JOIN cars c ON u.car_id = c.car_id;

