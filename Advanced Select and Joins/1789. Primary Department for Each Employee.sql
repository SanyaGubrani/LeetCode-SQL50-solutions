SELECT 
    e.employee_id, 
    e.department_id
FROM employee e
WHERE 
    e.primary_flag = 'Y'
    OR e.employee_id IN (
        SELECT employee_id FROM employee
        GROUP BY employee_id
        HAVING COUNT(DISTINCT department_id) = 1
    );