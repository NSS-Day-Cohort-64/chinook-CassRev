-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.
SELECT 
    customer_full_name,
    country,
    MAX(total_sales) AS country_customer_total_spent
FROM (
    SELECT
        cu.FirstName || ' ' || cu.LastName AS customer_full_name,
        cu.Country AS country,
        SUM(il.Quantity) AS total_sales
    FROM Customer cu
    JOIN Invoice i, InvoiceLine il 
    ON cu.CustomerId = i.CustomerId AND i.InvoiceId = il.InvoiceId
    GROUP BY cu.Country); 
