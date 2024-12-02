-- Data Loading

-- Create Schema and Set Default
CREATE SCHEMA `2023_trip_data`;
USE `2023_trip_data`;

-- Create Tables
CREATE TABLE IF NOT EXISTS `divvy_tripdata_202301` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202302` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202303` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202304` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202305` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202306` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202307` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202308` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202309` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202310` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202311` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `divvy_tripdata_202312` (
    `ride_id` VARCHAR(255) PRIMARY KEY,
    `rideable_type` VARCHAR(255),
    `started_at` DATETIME,
    `ended_at` DATETIME,
    `start_station_name` VARCHAR(255),
    `start_station_id` VARCHAR(255),
    `end_station_name` VARCHAR(255),
    `end_station_id` VARCHAR(255),
    `start_lat` VARCHAR(255),
    `start_lng` VARCHAR(255),
    `end_lat` VARCHAR(255),
    `end_lng` VARCHAR(255),
    `member_casual` VARCHAR(255)
);

-- Load Tables
LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202301-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202301`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202302-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202302`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202303-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202303`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202304-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202304`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202305-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202305`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202306-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202306`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202307-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202307`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202308-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202308`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202309-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202309`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202310-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202310`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202311-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202311`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/sohjianhao/Downloads/Google Analytics Capstone Dataset/202312-divvy-tripdata.csv'
INTO TABLE `divvy_tripdata_202312`
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;