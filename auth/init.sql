CREATE USER 'auth_user'@'%' IDENTIFIED BY 'Auth@123';

CREATE DATABASE auth;
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'%';
FLUSH PRIVILEGES;

USE auth;

CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user(email, password) VALUES ("sumit@example.com", "admin@123")
