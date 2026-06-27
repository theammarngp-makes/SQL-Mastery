/*
=====================================================
TOPIC: CTE Aggregations
LEVEL: Intermediate
=====================================================

LEARNING GOALS
✓ Aggregate inside CTE workflows
✓ Department analytics
✓ City analytics

BUSINESS USE:
Workforce analysis dashboard.
=====================================================
*/
-- Q1 Employee Count Per Department

-- Business Goal:
-- Measure department size.
-- KPI:
-- Employee Count

WITH emp_cte AS ( 
SELECT 
    emp_id,
    emp_name,
    dept_id
FROM
    employes
),
dept_cte AS ( 
SELECT 
    dept_id,
    dept_name
FROM
    departments
)
SELECT 
    d.dept_id,
    d.dept_name,
	count(e.emp_id) as num_of_emp
FROM emp_cte e
JOIN dept_cte d
	ON e.dept_id = d.dept_id
GROUP BY d.dept_name,d.dept_id
;
/*
OUTPUT :
'1','Data Analytics','2'
'2','Engineering','2'
'3','Marketing','1'
*/
-- Q2 Departments having more than 1 employee
WITH emp_cte AS ( 
SELECT 
    emp_id,
    emp_name,
    dept_id
FROM
    employes
),
dept_cte AS ( 
SELECT 
    dept_id,
    dept_name
FROM
    departments
)
SELECT 
    d.dept_id,
    d.dept_name,
	count(e.emp_id) as num_of_emp
FROM emp_cte e
JOIN dept_cte d
	ON e.dept_id = d.dept_id
GROUP BY d.dept_name,d.dept_id
HAVING count(e.emp_id) > 1  
;

-- Q3 Employee count per city

WITH emp_cte AS (
SELECT 
    emp_id,
    emp_name,
    dept_id
FROM
    employes
),
dept_cte AS ( 
 SELECT 
    dept_id,
    dept_name,
    location_id
FROM
    departments
),
locations_cte AS ( 
SELECT 
    city, 
    location_id
FROM
    locations
)
SELECT 
    l.city,
    COUNT(DISTINCT e.emp_id)emp_count
FROM
    emp_cte e
        JOIN
    dept_cte d 
    ON e.dept_id = d.dept_id
        JOIN
    locations_cte l 
    ON d.location_id = l.location_id
GROUP BY l.city  ;

-- Q4 Cities having more than 1 department

WITH emp_cte AS (
SELECT 
    emp_id,
    emp_name,
    dept_id
FROM
    employes
),
dept_cte AS ( 
 SELECT 
    dept_id,
    dept_name,
    location_id
FROM
    departments
),
locations_cte AS ( 
SELECT 
    city, 
    location_id
FROM
    locations
)
SELECT 
    l.city,
    COUNT( d.dept_id)dep_count
FROM
    emp_cte e
        JOIN
    dept_cte d 
    ON e.dept_id = d.dept_id
        JOIN
    locations_cte l 
    ON d.location_id = l.location_id
GROUP BY l.city
HAVING  COUNT( d.dept_id) >1 
;
-- Q5 Department size classification

-- Large Department (>3 employees)
-- Small Department (<=3 employees)
-- Business Goal:
-- Categorize departments by workforce size.
WITH emp_cte AS ( 
SELECT 
    emp_id,
    emp_name,
    dept_id
FROM
    employes
),
dept_cte AS ( 
SELECT 
    dept_id,
    dept_name
FROM
    departments
)
SELECT 
    d.dept_id,
    d.dept_name,
	count(e.emp_id) as num_of_emp,
    CASE 
    WHEN count(e.emp_id) > 3 THEN 'Large'
    ELSE 'Small'
    END
FROM emp_cte e
JOIN dept_cte d
	ON e.dept_id = d.dept_id
GROUP BY d.dept_name,d.dept_id
;

/*
OUTPUT :
'1','Data Analytics','2','Small'
'2','Engineering','2','Small'
'3','Marketing','1','Small'
*/
