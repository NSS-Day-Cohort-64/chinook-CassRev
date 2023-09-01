-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)
SELECT
    e.FirstName || ' ' || e.LastName AS employee_full_name,
    COUNT(cu.CustomerId) AS total_assigned_customer
FROM Employee e
LEFT JOIN Customer cu ON e.EmployeeId = cu.SupportRepId
GROUP BY e.EmployeeId;