-- Provide a query that shows the most purchased track(s) of 2013.
SELECT
    track_name, 
    MAX(total_sales) AS most_purchased
FROM (
    SELECT
        t.Name AS track_name,
        COUNT(il.Quantity) AS total_sales
    FROM InvoiceLine il
    JOIN Track t, Invoice i 
    ON t.TrackId = il.TrackId AND il.InvoiceId = i.InvoiceId
    WHERE strftime('%Y', i.InvoiceDate) IN ('2013')
    GROUP BY t.TrackId);

SELECT
    COUNT(il.Quantity) AS Purchases, 
    t.Name AS TrackName 
FROM InvoiceLine il
JOIN Invoice i, Track t
ON il.InvoiceId = i.InvoiceId AND il.TrackId = t.TrackId
WHERE strftime('%Y', i.InvoiceDate) IN ('2013') 
GROUP BY il.TrackId;


SELECT 
track_name, 
MAX(most_purchased) 
FROM (
    SELECT
        t.name AS track_name,
        SUM(il.Quantity) AS most_purchased
    FROM Track t
    JOIN Invoice i, InvoiceLine il
    ON i.InvoiceId = il.InvoiceId AND il.TrackId = t.TrackId
    AND strftime('%Y', i.InvoiceDate) IN ('2013')
    GROUP BY t.TrackId);