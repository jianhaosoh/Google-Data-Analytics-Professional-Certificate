-- Data Combining

CREATE TABLE IF NOT EXISTS `combined_trip_data` AS (
  SELECT * FROM `divvy_tripdata_202301`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202302`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202303`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202304`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202305`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202306`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202307`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202308`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202309`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202310`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202311`
  UNION ALL
  SELECT * FROM `divvy_tripdata_202312`
);