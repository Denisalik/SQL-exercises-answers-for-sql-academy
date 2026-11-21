WITH RECURSIVE date_series AS (
	SELECT start_date::date AS dt,
		end_date::date AS end_dt
	FROM Reservations
	WHERE room_id = 1
	UNION ALL
	SELECT dt + 1,
		end_dt
	FROM date_series
	WHERE dt < end_dt
)
SELECT DISTINCT dt as "day"
FROM date_series
ORDER BY dt