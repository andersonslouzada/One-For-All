SELECT
	art.artist_name AS artista,
  alb.album_name AS album
FROM artists AS art
INNER JOIN albums AS alb ON alb.artist_id = art.artist_id
WHERE art.artist_name LIKE 'Elis Regina'
ORDER BY album ASC;