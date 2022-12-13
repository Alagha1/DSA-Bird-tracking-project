CREATE SCHEMA milestone_project2;

SELECT * FROM CITY_WEATHER 
LIMIT 5;

SELECT * FROM BIRD_DATA 
LIMIT 5;

SELECT 
    bird.speed_2d,
    bird.bird_name,
    bird.id,
    bird.altitude,
    bird.date_time,
    bird.device_info_serial,
    bird.direction,
    bird.latitude,
    bird.longitude,
    bird.nearest_city,
    bird.country,
    city.avg_temp
FROM
    bird_data AS bird
        LEFT OUTER JOIN
    city_weather AS city ON bird.date = city.date
        AND bird.nearest_city = city.city
ORDER BY id;


