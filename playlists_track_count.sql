-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist
SELECT
    p.Name AS playlist_name,
    COUNT(plt.TrackId) AS total_tracks
FROM Playlist p
JOIN PlaylistTrack plt ON p.PlaylistId = plt.PlaylistId
GROUP BY p.PlaylistId;