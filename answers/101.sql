SELECT DISTINCT user_id,
FIRST_VALUE(item) OVER (PARTITION BY user_id ORDER BY transaction_ts) AS item
FROM Transactions