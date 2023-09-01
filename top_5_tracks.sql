-- Provide a query that shows the top 5 most purchased tracks over all.
SELECT 
    t.Name AS track_name,
    COUNT(*) AS track_purchases
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY il.TrackId
ORDER BY track_purchases DESC
LIMIT 5;
