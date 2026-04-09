-- infrastructure/database_schema.sql
-- Initial database setup for the Aurora RDS instance

CREATE DATABASE IF NOT EXISTS webappdb;
USE webappdb;

-- Create the main transactions table
CREATE TABLE IF NOT EXISTS transactions(
    id INT NOT NULL AUTO_INCREMENT,
    amount DECIMAL(10,2),
    description VARCHAR(100),
    PRIMARY KEY(id)
);

-- Insert initial sample data for health checking
INSERT INTO transactions (amount, description) VALUES ('400', 'groceries');
