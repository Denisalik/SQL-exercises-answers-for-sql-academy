SELECT name
from Passenger
WHERE LENGTH(name) = (
		SELECT MAX(LENGTH(name))
		FROM Passenger
	)
-- or use this:
-- SELECT name
-- FROM (
--     SELECT name, MAX(LENGTH(name)) OVER () AS max_len
--     FROM Passenger
-- ) t
-- WHERE LENGTH(name) = max_len;

-- or use this:
-- SELECT name
-- FROM Passenger
-- ORDER BY LENGTH(name) DESC
-- FETCH FIRST 1 ROW WITH TIES;