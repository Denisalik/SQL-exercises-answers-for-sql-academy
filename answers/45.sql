WITH t AS (
	SELECT classroom,
		COUNT(classroom) as times,
		MAX(COUNT(classroom)) OVER() AS max_times
	FROM Schedule
	GROUP BY classroom
)
SELECT classroom
FROM t
WHERE times = max_times

-- or this:
SELECT classroom FROM Schedule
GROUP BY classroom
HAVING COUNT(classroom) = (
    SELECT MAX(classroom_count) FROM
	(SELECT COUNT(classroom) AS classroom_count
    FROM Schedule GROUP BY classroom) AS counts
)