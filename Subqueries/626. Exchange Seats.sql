SELECT
    CASE
        WHEN id % 2 = 0 THEN id - 1
        WHEN id = (SELECT COUNT(*) FROM seat) THEN id #When no change in odd even seat, the last one
        ELSE id + 1
    END AS id,
    student
FROM seat
ORDER BY id;
