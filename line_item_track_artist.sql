-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
SELECT
    il.InvoiceLineId AS invoice_line,
    t.name AS track_name,
    a.name AS artist_name
FROM InvoiceLine il
JOIN Track t, Album alb, Artist a
ON t.TrackId = il.TrackId AND t.AlbumId = alb.AlbumId AND alb.ArtistId = a.ArtistId;