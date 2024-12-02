-- Data Analysis

-- Find the bike type usage for each member type
SELECT member_casual, rideable_type, COUNT(*) AS total_trips
FROM cleaned_trip_data
GROUP BY member_casual, rideable_type;

-- Find the descriptive statistics of the ride length for each member type
WITH ranked AS (
    SELECT 
        member_casual, 
        rideable_type,
        ride_length,
        ROW_NUMBER() OVER (PARTITION BY member_casual, rideable_type ORDER BY ride_length) AS r,
        COUNT(*) OVER (PARTITION BY member_casual, rideable_type) AS c
    FROM cleaned_trip_data
),
percentiles AS (
    SELECT 
        member_casual, 
        rideable_type,
        AVG(ride_length) AS average_ride_duration,
        MIN(ride_length) AS min_ride_duration,
        MAX(ride_length) AS max_ride_duration,
        (SELECT AVG(ride_length) 
         FROM ranked r2 
         WHERE r2.member_casual = r1.member_casual 
           AND r2.rideable_type = r1.rideable_type 
           AND r2.r IN (FLOOR((c+1)/2), CEIL((c+1)/2))
        ) AS median,
        (SELECT AVG(ride_length) 
         FROM ranked r2 
         WHERE r2.member_casual = r1.member_casual 
           AND r2.rideable_type = r1.rideable_type 
           AND r2.r IN (FLOOR((c+1)*0.25), CEIL((c+1)*0.25))
        ) AS percentile_25,
        (SELECT AVG(ride_length) 
         FROM ranked r2 
         WHERE r2.member_casual = r1.member_casual 
           AND r2.rideable_type = r1.rideable_type 
           AND r2.r IN (FLOOR((c+1)*0.75), CEIL((c+1)*0.75))
        ) AS percentile_75
    FROM ranked r1
    GROUP BY member_casual, rideable_type
)
SELECT * FROM percentiles;

-- Find the no. of trips by hour
SELECT time_of_day, member_casual, COUNT(ride_id) AS total_trips
FROM cleaned_trip_data
GROUP BY time_of_day, member_casual
ORDER BY time_of_day;


-- Find the no. of trips by day
SELECT day_of_week, member_casual, COUNT(ride_id) AS total_trips
FROM cleaned_trip_data
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;

-- Find the no. of trips by month
SELECT month_of_year, member_casual, COUNT(ride_id) AS total_trips
FROM cleaned_trip_data
GROUP BY month_of_year, member_casual
ORDER BY month_of_year;

-- Find the average ride duration by hour
SELECT time_of_day, member_casual, AVG(ride_length) AS average_ride_duration
FROM cleaned_trip_data
GROUP BY time_of_day, member_casual
ORDER BY time_of_day;


-- Find the average ride duration by day
SELECT day_of_week, member_casual, AVG(ride_length) AS average_ride_duration
FROM cleaned_trip_data
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;

-- Find the average ride duration by month
SELECT month_of_year, member_casual, AVG(ride_length) AS average_ride_duration
FROM cleaned_trip_data
GROUP BY month_of_year, member_casual
ORDER BY month_of_year;

-- Find the total trips for the different starting location
SELECT start_station_name, member_casual,
  AVG(start_lat) AS start_lat, AVG(start_lng) AS start_lng,
  COUNT(ride_id) AS total_trips
FROM cleaned_trip_data
GROUP BY start_station_name, member_casual
ORDER BY COUNT(ride_id) DESC;

-- Find the total trips for the different ending location
SELECT end_station_name, member_casual,
  AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng,
  COUNT(ride_id) AS total_trips
FROM cleaned_trip_data
GROUP BY end_station_name, member_casual
ORDER BY COUNT(ride_id) DESC;