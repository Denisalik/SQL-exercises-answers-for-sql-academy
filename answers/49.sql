SELECT ROUND(
		100.0 * COUNT(*) FILTER (
			WHERE Class.name = '10 A'
		) / NULLIF(COUNT(*), 0),
		4
	) AS percent
FROM Student_in_class
	JOIN Class ON Class.id = Student_in_class.class;
-- or use this:
-- WITH counts AS (
-- 	SELECT name,
-- 		COUNT(Student_in_class.id) AS counts
-- 	FROM Student_in_class
-- 		JOIN Class ON Class.id = Student_in_class.class
-- 	GROUP BY Class.id
-- )
-- SELECT ROUND(
-- 		100 * COUNT(Student_in_class.id) /(
-- 			SELECT SUM(counts)
-- 			FROM counts
-- 		),
-- 		4
-- 	) AS percent
-- FROM Student_in_class
-- 	JOIN Class ON Class.id = Student_in_class.class
-- WHERE Class.name = '10 A'