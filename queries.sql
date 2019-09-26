### SQL query to extract the city and global data

SELECT c.year,
       COALESCE(c.avg_temp, '0') AS city_temp,
       COALESCE(g.avg_temp, '0') AS global_temp
FROM city_data AS c
FULL OUTER JOIN global_data AS g
ON c.year = g.year
WHERE city = 'Madrid'
ORDER BY 1
