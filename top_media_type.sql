-- Provide a query that shows the most purchased Media Type.
SELECT
    media_type,
    MAX(purchase_count) AS most_purchased_media_type
FROM (
    SELECT
        mdt.Name AS media_type,
        t.MediaTypeId,
        COUNT(*) AS purchase_count
    FROM InvoiceLine il
    JOIN Track t, MediaType mdt 
    ON il.TrackId = t.TrackId AND t.MediaTypeId = mdt.MediaTypeId
    GROUP BY t.MediaTypeId
)