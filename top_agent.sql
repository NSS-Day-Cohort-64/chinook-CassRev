-- Which sales agent made the most in sales over all?
SELECT 
employee_full_name, 
MAX(total_sales) 
FROM (
    SELECT
        e.FirstName || ' ' || e.LastName AS employee_full_name,
        SUM(il.Quantity) AS total_sales
    FROM Employee e
    JOIN Customer cu, Invoice i, InvoiceLine il
    ON e.EmployeeId = cu.SupportRepId AND cu.CustomerId = i.CustomerId AND i.InvoiceId = il.InvoiceId
    WHERE e.Title LIKE '%Sales%Agent%'
    GROUP BY e.EmployeeId);