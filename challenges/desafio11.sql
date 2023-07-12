SELECT
	a.album_name AS album,
  COUNT(f.song_id) AS favoritadas
FROM favorites AS f
INNER JOIN songs AS s ON s.song_id = f.song_id
INNER JOIN albums AS a ON a.album_id = s.album_id
GROUP BY album
ORDER BY favoritadas DESC,  album ASC
LIMIT 3;