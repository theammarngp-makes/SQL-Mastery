-- Q1: Employee with smallest emp_id in each department

SELECT emp_name
FROM employes
WHERE emp_id IN
(
    SELECT MIN(emp_id)
    FROM employes
    GROUP BY dept_id
);
