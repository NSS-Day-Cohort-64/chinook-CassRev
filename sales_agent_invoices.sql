-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID
SELECT 
    e.FirstName || ' ' || e.LastName AS SalesAgent_FullName,
    i.InvoiceId 
FROM Employee e
JOIN Customer cu, Invoice i 
ON e.EmployeeId = cu.SupportRepId AND cu.CustomerId = i.CustomerId
WHERE e.Title LIKE '%Sales%Agent%';