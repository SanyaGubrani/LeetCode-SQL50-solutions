SELECT
  s.user_id,
  ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
FROM signups s
  LEFT JOIN confirmations c ON c.user_id = s.user_id
GROUP BY s.user_id