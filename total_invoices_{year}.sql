-- How many Invoices were there in 2009 and 2011?
-- HINT: COUNT
SELECT 
    strftime('%Y', InvoiceDate) AS invoice_year,
    COUNT(*) AS year_invoices
FROM Invoice
WHERE 
    strftime('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY invoice_year;