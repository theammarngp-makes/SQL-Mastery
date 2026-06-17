-- Q4: Find the total number of employees per city
SELECT 
    l.city,(COUNT(e.emp_id)) AS number_of_employes
FROM
	employes e 
        JOIN
	departments d    
    ON   e.dept_id=d.dept_id 
        JOIN
    locations l ON d.location_id = l.location_id
GROUP BY l.city ;

-- Output = 
--city	  number_of_employes
--Nagpur	3
--Pune	  2

-- Q: Department name and employee count
-- Only for departments located in Nagpur

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM employes e
JOIN departments d
ON e.dept_id = d.dept_id
JOIN locations l
ON d.location_id = l.location_id
WHERE l.city = 'Nagpur'
GROUP BY d.dept_name;