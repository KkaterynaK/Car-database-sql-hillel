CREATE DATABASE DZ2701;
USE DZ2701;

CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    carBrandId INT NOT NULL,
    carModelId INT NOT NULL,
    mileage INT NOT NULL,
    initialMilleage INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

INSERT INTO car_brands (title) VALUES
('Toyota'),
('BMW'),
('Mercedes'),
('Audi');

INSERT INTO car_models (carBrandId, title) VALUES
(1, 'Corolla'),
(1, 'Camry'),
(2, 'X5'),
(2, '3 Series'),
(3, 'C-Class'),
(3, 'E-Class'),
(4, 'A4'),
(4, 'Q7');

INSERT INTO users (firstName, lastName, email, password) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123'),
('Jane', 'Smith', 'jane.smith@example.com', 'securepass'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'alicepass'),
('Bob', 'Brown', 'bob.brown@example.com', 'bobpass');

INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMilleage) VALUES
(1, 1, 1, 50000, 20000),
(2, 2, 3, 30000, 15000),
(3, 3, 5, 40000, 10000),
(4, 4, 8, 60000, 25000);
