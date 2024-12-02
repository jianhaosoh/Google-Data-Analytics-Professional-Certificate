-- Data Cleaning

-- Create new table and Remove rows with missing values
CREATE TABLE cleaned_trip_data AS
SELECT 
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM combined_trip_data
WHERE 
    ride_id IS NOT NULL AND TRIM(ride_id) != '' AND
    rideable_type IS NOT NULL AND TRIM(rideable_type) != '' AND
    started_at IS NOT NULL AND TRIM(started_at) != '' AND
    ended_at IS NOT NULL AND TRIM(ended_at) != '' AND
    start_station_name IS NOT NULL AND TRIM(start_station_name) != '' AND
    start_station_id IS NOT NULL AND TRIM(start_station_id) != '' AND
    end_station_name IS NOT NULL AND TRIM(end_station_name) != '' AND
    end_station_id IS NOT NULL AND TRIM(end_station_id) != '' AND
    start_lat IS NOT NULL AND TRIM(start_lat) != '' AND
    start_lng IS NOT NULL AND TRIM(start_lng) != '' AND
    end_lat IS NOT NULL AND TRIM(end_lat) != '' AND
    end_lng IS NOT NULL AND TRIM(end_lng) != '' AND
    member_casual IS NOT NULL AND TRIM(member_casual) != '';
    
-- Created the new columns `ride_length` and `day_of_week`
ALTER TABLE cleaned_trip_data
ADD COLUMN ride_length INT,
ADD COLUMN day_of_week INT,
ADD COLUMN time_of_day INT,
ADD COLUMN month_of_year INT;

UPDATE cleaned_trip_data
SET 
	ride_length = TIMESTAMPDIFF(SECOND, started_at, ended_at),
	day_of_week = DAYOFWEEK(started_at),
	time_of_day = HOUR(started_at),
    month_of_year = MONTH(started_at);   

-- Removed the rows where `ride_length` is less than or equals to 0
DELETE FROM cleaned_trip_data
WHERE ride_length <= 0;

-- Run query to check total no. of rows
SELECT COUNT(*)
FROM cleaned_trip_data