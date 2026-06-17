-- Q1: Departments with more than one employee

SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM employes
GROUP BY dept_id
HAVING COUNT(*) > 1;

------------------------------------------------

-- Q2: Cities with more than one employee

SELECT
    l.city,
    COUNT(e.emp_id) AS employee_count
FROM employes e
JOIN departments d
ON e.dept_id = d.dept_id
JOIN locations l
ON d.location_id = l.location_id
GROUP BY l.city
HAVING COUNT(e.emp_id) > 1;