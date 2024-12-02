-- Data Exploration

-- Check total no. of rows, query 1
SELECT COUNT(*) 
FROM combined_trip_data; -- 5719865

-- Check columns and data type, query 2
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'combined_trip_data'
AND TABLE_SCHEMA = '2023_trip_data';

-- Check null values, query 3
SELECT 
    SUM(CASE WHEN ride_id IS NULL OR TRIM(ride_id) = '' THEN 1 ELSE 0 END) AS ride_id_null,
    SUM(CASE WHEN rideable_type IS NULL OR TRIM(rideable_type) = '' THEN 1 ELSE 0 END) AS rideable_type_null,
    SUM(CASE WHEN started_at IS NULL OR TRIM(started_at) = '' THEN 1 ELSE 0 END) AS started_at_null,
    SUM(CASE WHEN ended_at IS NULL OR TRIM(ended_at) = '' THEN 1 ELSE 0 END) AS ended_at_null,
    SUM(CASE WHEN start_station_name IS NULL OR TRIM(start_station_name) = '' THEN 1 ELSE 0 END) AS start_station_name_null,
    SUM(CASE WHEN start_station_id IS NULL OR TRIM(start_station_id) = '' THEN 1 ELSE 0 END) AS start_station_id_null,
    SUM(CASE WHEN end_station_name IS NULL OR TRIM(end_station_name) = '' THEN 1 ELSE 0 END) AS end_station_name_null,
    SUM(CASE WHEN end_station_id IS NULL OR TRIM(end_station_id) = '' THEN 1 ELSE 0 END) AS end_station_id_null,
    SUM(CASE WHEN start_lat IS NULL OR TRIM(start_lat) = '' THEN 1 ELSE 0 END) AS start_lat_null,
    SUM(CASE WHEN start_lng IS NULL OR TRIM(start_lng) = '' THEN 1 ELSE 0 END) AS start_lng_null,
    SUM(CASE WHEN end_lat IS NULL OR TRIM(end_lat) = '' THEN 1 ELSE 0 END) AS end_lat_null,
    SUM(CASE WHEN end_lng IS NULL OR TRIM(end_lng) = '' THEN 1 ELSE 0 END) AS end_lng_null,    
    SUM(CASE WHEN member_casual IS NULL OR TRIM(member_casual) = '' THEN 1 ELSE 0 END) AS member_casual_null
FROM combined_trip_data;

-- Check duplicate rows, query 4
SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM combined_trip_data; -- 0

-- Check to see if there is any errors in starting and ending time, query 5
SELECT COUNT(*) FROM 
	(SELECT ride_id, started_at, ended_at, TIMESTAMPDIFF(SECOND, started_at, ended_at) AS trip_duration
	FROM combined_trip_data
	WHERE TIMESTAMPDIFF(SECOND, started_at, ended_at) <= 0) AS sub; -- 1269

-- Check unique type of bikes query 6
SELECT rideable_type, COUNT(*) no_of_trips
FROM combined_trip_data
GROUP BY rideable_type;

-- Check membership type, query 7
SELECT member_casual, COUNT(*) no_of_trips
FROM combined_trip_data
GROUP BY member_casual;