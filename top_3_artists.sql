-- Provide a query that shows the top 3 best selling artists.
SELECT 
    ar.Name AS artist_name,
    SUM(il.Quantity) AS total_sales
FROM InvoiceLine il
JOIN Track t, Album al, Artist ar
ON il.TrackId = t.TrackId AND t.AlbumId = al.AlbumId AND al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY total_sales DESC
LIMIT 3;

