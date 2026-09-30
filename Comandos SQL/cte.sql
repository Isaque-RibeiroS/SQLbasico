USE leito_hospitalar;

-- Total de leitos reservados
WITH total_reservas AS (
	SELECT COUNT(id_reserva) AS 'total_reservas' 
	FROM reserva
),
-- Total de reservas por tipo de leito
reservas_por_tipo AS (
	SELECT 
	COUNT(r.id_leito) AS 'numero_de_reservas',
	tipo AS 'leito'
	FROM reserva r JOIN leito l
	ON r.id_leito = l.id_leito
	GROUP BY tipo
)
-- Porcentagem de ocupação de reservas por tipo de leito
SELECT 
rp.leito,
rp.numero_de_reservas,
CONCAT((rp.numero_de_reservas / tr.total_reservas) * 100,'%') AS percentual
FROM reservas_por_tipo rp,total_reservas tr;



