SELECT e.department_id,
       COUNT(*) AS employees_with_manager
FROM employees e
GROUP BY e.department_id