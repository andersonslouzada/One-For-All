SELECT 
	art.artist_name AS artista,
  CASE
    WHEN COUNT(s.song_id) IN(1, 2) THEN 'C'
    WHEN COUNT(s.song_id) IN(3, 4) THEN 'B'
    WHEN COUNT(s.song_id) >= 5 THEN 'A'
    ELSE '-'
	END AS ranking
FROM favorites AS f
INNER JOIN songs AS s ON s.song_id = f.song_id
INNER JOIN albums AS alb ON alb.album_id = s.album_id
RIGHT JOIN artists AS art ON art.artist_id = alb.artist_id
GROUP BY artista
ORDER BY COUNT(s.song_id) DESC, artista ASC;