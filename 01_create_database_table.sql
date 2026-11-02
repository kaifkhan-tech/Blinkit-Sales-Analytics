-- Blinkit Sales Analytics | MySQL 8.0
CREATE DATABASE IF NOT EXISTS blinkit_analytics;
USE blinkit_analytics;

CREATE TABLE IF NOT EXISTS blinkit_sales (
  Item_Fat_Content VARCHAR(30), Item_Identifier VARCHAR(20), Item_Type VARCHAR(60),
  Outlet_Establishment_Year INT, Outlet_Identifier VARCHAR(20),
  Outlet_Location_Type VARCHAR(20), Outlet_Size VARCHAR(20), Outlet_Type VARCHAR(40),
  Item_Visibility DECIMAL(8,5), Item_Weight DECIMAL(8,2), Sales DECIMAL(12,2), Rating DECIMAL(3,1)
);
-- Import Dataset/blinkit_sales_sample.csv using MySQL Workbench Table Data Import Wizard.
