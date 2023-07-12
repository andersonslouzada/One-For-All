SELECT 
	MIN(price) AS faturamento_minimo,
  MAX(price) AS faturamento_maximo,
  ROUND(AVG(price), 2) AS faturamento_medio,
  ROUND(SUM(price), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users as u ON u.plan_id = p.plan_id;