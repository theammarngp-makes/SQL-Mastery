-- TOPIC: MULTI-TABLE JOIN
-- DIFFICULTY: Intermediate

-- Q1: Show each employee with their department
-- name and city.

-- Business Use:
-- Employee location reporting.

SELECT
    e.emp_name,
    d.dept_name,
    l.city
FROM employes e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
INNER JOIN locations l
    ON d.location_id = l.location_id;

-- Q2: Show only employees working in Nagpur.
--
-- Business Use:
-- City-wise workforce analysis.

SELECT
    e.emp_name,
    l.city
FROM employes e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
INNER JOIN locations l
    ON d.location_id = l.location_id
WHERE l.city = 'Nagpur';

-- Q3: Show department name and employee count.

-- Business Use:
-- Department staffing analysis.
SELECT
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM employes e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- KEY LEARNINGS

-- 1. Multiple tables can be joined together.
-- 2. WHERE can be applied after joins.
-- 3. GROUP BY can be combined with joins.
-- 4. Most real-world SQL queries involve
--    3 or more tables.
