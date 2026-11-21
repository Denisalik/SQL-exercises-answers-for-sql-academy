SELECT EXTRACT(MONTH FROM transaction_at) AS mth,
COUNT(DISTINCT customer_id) AS mau
FROM transactions
GROUP BY EXTRACT(MONTH FROM transaction_at)
ORDER BY mth;
-- this query works, because data only include 1 year,
-- if there gonna be more years it won't work.
-- It need to have group by with 2 columns - month+year.