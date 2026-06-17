-- TOPIC: ORDER BY
-- Show employees alphabetically.

SELECT *
FROM employes
ORDER BY emp_name;


-- Business Question:
-- Show employees from highest ID to lowest ID.

SELECT *
FROM employes
ORDER BY emp_id DESC;

-- Show employees grouped by department order.

SELECT *
FROM employes
ORDER BY dept_id;

-- Show employees sorted by department and name.

SELECT *
FROM employes
ORDER BY dept_id, emp_name;
