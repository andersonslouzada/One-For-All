SELECT 
	s.song_name AS cancao,
  COUNT(pbh.user_id) AS reproducoes
FROM songs AS s
INNER JOIN playback_history AS pbh ON pbh.song_id = s.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, s.song_name ASC
LIMIT 2;