-- Which sales agent made the most in sales in 2009?
-- HINT: Use the MAX function on a subquery.
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
    AND strftime('%Y', i.InvoiceDate) IN ('2009')
    GROUP BY e.EmployeeId);