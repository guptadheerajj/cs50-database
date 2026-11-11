SELECT "entropy" AS "TOP 5 Entropy values For Hokusai" FROM "views"
WHERE "artist" IS 'Hokusai'
ORDER BY "entropy"
LIMIT 5;
