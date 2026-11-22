SELECT AVG(end_pair) FILTER (
		WHERE id = 4
	) - AVG(start_pair) FILTER (
		WHERE id = 2
	) AS time
FROM Timepair
WHERE id IN (2, 4);
-- or use this:
-- SELECT
-- (SELECT end_pair FROM Timepair WHERE id=4) -
-- (SELECT start_pair FROM Timepair WHERE id=2) AS time