SELECT id,
	home_type,
	CASE
		WHEN has_tv
		AND has_internet THEN 0.9 * price
		ELSE price
	END AS price
FROM Rooms