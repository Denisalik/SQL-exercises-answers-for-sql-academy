WITH t AS (
	SELECT MIN(COUNT(company)) OVER () AS min_c,
		company,
		COUNT(company) AS c
	FROM Trip
	GROUP BY company
)
DELETE FROM Company
WHERE Company.id IN(
		SELECT company
		FROM t
		WHERE min_c = c
	)