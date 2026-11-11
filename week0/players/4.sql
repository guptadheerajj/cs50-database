SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" != 'USA'
ORDER BY "first_name" ASC, "last_name" ASC;

-- WHERE "birth_country" IS NOT 'USA'
-- -> This produce wrong answer because IS NOT Returns True if a "birth_country" is NULL
-- --> i.e NULL IS NOT 'USA' = True
-- --> NULL != 'USA' = NULL (False)


-- SQLite's IS NOT treats NULL as a comparable value.
-- 3. Remember this distinction
-- Operator	Normal values	NULL handling
-- =	Equality	Returns NULL if either operand is NULL
-- !=	Not equal	Returns NULL if either operand is NULL
-- <>	Not equal	Returns NULL if either operand is NULL
-- IS	Equality	Handles NULL explicitly
-- IS NOT	Not equal	Handles NULL explicitly

-- 4. When should you use which?
-- - = and <> for ordinary comparisons.
-- - IS NULL to find missing values.
-- - IS NOT NULL to find non-missing values.
-- - IS NOT for SQLite-specific NULL-safe comparisons.
