SELECT strftime('%Y', "air_date") AS "year", MIN(strftime('%m-%d', "air_date")) AS "month-day"
FROM "episodes"
GROUP BY "year";
