SELECT e1.name
FROM Employee e1
	JOIN Employee e2 ON e2.id = e1.chief_id
WHERE e1.salary > e2.salary;
-- or use this:
-- SELECT e1.name
-- FROM Employee e1
-- WHERE salary > (
-- 		SELECT e2.salary
-- 		FROM Employee e2
-- 		WHERE e2.id = e1.chief_id
-- 	)