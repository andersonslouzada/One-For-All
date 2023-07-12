SELECT 
	u.user_name AS pessoa_usuaria,
  CASE
		WHEN MAX(YEAR(pbh.playback_date)) >= 2021 THEN 'Ativa'
    WHEN MAX(YEAR(pbh.playback_date)) < 2021 THEN 'Inativa'
	END AS status_pessoa_usuaria
FROM users AS u
INNER JOIN playback_history AS pbh ON pbh.user_id = u.user_id
GROUP BY u.user_name  
ORDER BY u.user_name ASC;