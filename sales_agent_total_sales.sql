-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)
SELECT
    e.FirstName || ' ' || e.LastName AS employee_full_name,
    SUM(il.Quantity) AS total_sales
FROM Employee e
JOIN Customer cu, Invoice i, InvoiceLine il
ON e.EmployeeId = cu.SupportRepId AND cu.CustomerId = i.CustomerId AND i.InvoiceId = il.InvoiceId
WHERE e.Title LIKE '%Sales%Agent%'
GROUP BY e.EmployeeId;