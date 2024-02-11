(SELECT "Low Salary" AS category, COUNT(*) AS accounts_count FROM Accounts WHERE income < 20000)
UNION
(SELECT "Average Salary" AS category, COUNT(*) AS accounts_count FROM Accounts WHERE income between 20000 AND 50000)
UNION
(SELECT "High Salary" AS category, COUNT(*) AS accounts_count FROM Accounts WHERE 50000 < income)