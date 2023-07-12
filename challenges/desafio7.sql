SELECT 
	art.artist_name AS artista,
	alb.album_name AS album,
  COUNT(fa.user_id) AS pessoas_seguidoras
FROM artists AS art
INNER JOIN albums AS alb ON alb.artist_id = art.artist_id
INNER JOIN follow_artists AS fa ON fa.artist_id = art.artist_id
GROUP BY artista, album 
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;