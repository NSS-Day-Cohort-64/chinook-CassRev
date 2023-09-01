-- Provide a query that shows the total number of invoices per country.
-- HINT: GROUP BY
SELECT
    BillingCountry,
    COUNT(*) AS total_country_invoice
FROM Invoice
GROUP BY BillingCountry;
