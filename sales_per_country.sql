-- Provide a query that shows the total sales per country.
SELECT
    i.BillingCountry,
    COUNT(il.Quantity) AS total_country_sales
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.BillingCountry;