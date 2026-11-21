SELECT city,
	COUNT(*) AS warehouse_count
FROM Warehouses
WHERE CURRENT_DATE > date_open
	AND (
		date_close IS NULL
		OR CURRENT_DATE < date_close
	)
GROUP BY city
HAVING warehouse_count > 80