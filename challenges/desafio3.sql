SELECT
	u.user_name AS pessoa_usuaria,
    COUNT(pbh.user_id) AS musicas_ouvidas,
    SUM(ROUND((length_seconds) / 60, 2)) AS total_minutos
FROM users AS u
INNER JOIN playback_history AS pbh ON pbh.user_id = u.user_id
INNER JOIN songs AS s ON s.song_id = pbh.song_id
GROUP BY u.user_name
ORDER BY u.user_name ASC;