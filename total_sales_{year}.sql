-- What are the respective total sales for each of those years?
-- HINT: SUM
SELECT 
    strftime('%Y', InvoiceDate) AS year_sales,
    SUM(Total) AS total_sales
FROM Invoice
WHERE 
    strftime('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY year_sales;