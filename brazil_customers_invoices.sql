-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT 
    cu.FirstName || ' ' || LastName AS FullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer cu 
JOIN Invoice i 
    ON cu.CustomerId = i.CustomerId
WHERE cu.Country = 'Brazil';