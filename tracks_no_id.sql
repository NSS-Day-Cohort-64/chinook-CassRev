-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre
SELECT DISTINCT
    alb.Title AS album_name,
    mdt.Name AS media_type,
    g.Name AS genre
FROM Track t
JOIN Album alb, MediaType mdt, Genre g
ON t.AlbumId = alb.AlbumId AND t.MediaTypeId = mdt.MediaTypeId AND t.GenreId = g.GenreId;
