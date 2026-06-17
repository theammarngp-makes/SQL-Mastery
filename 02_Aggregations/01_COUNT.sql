-- Q1: Total employees

SELECT COUNT(*) AS total_employees
FROM employes;

------------------------------------------------

-- Q2: Employees per department

SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM employes
GROUP BY dept_id;