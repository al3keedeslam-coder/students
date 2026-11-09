CREATE DATABASE IF NOT EXISTS school_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE school_db;

CREATE TABLE IF NOT EXISTS students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  score INT NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role ENUM('admin','student') DEFAULT 'student'
);

INSERT INTO students (name, score) VALUES
('reda rabie', 100),
('reda C4', 70),
('reda C4', 80),
('reda rabie', 70),
('reda', 110),
('reda', 64);
