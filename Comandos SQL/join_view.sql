USE leito_hospitalar;

-- Seleciona nomes de pacientes e suas respectivas reservas

CREATE VIEW reserva_paciente AS 
	SELECT 
	nome AS 'paciente',
	data_reserva AS 'data reservada'
	FROM 
	paciente p
	RIGHT JOIN 
	reserva r
	ON p.id_paciente = r.id_paciente;

SELECT * FROM reserva_paciente;

/* Seleção do n° dos quartos e tipo em uma data reservada, 
indicando o email do paciente ocupante da reserva*/

CREATE VIEW leito_reserva_email AS
	SELECT 
	numero_quarto AS 'n° do quarto',
	tipo,
	data_reserva AS 'data reservada',
	email
	FROM 
	leito l
	INNER JOIN 
	reserva r
	ON l.id_leito = r.id_leito
	INNER JOIN 
	paciente p
	ON r.id_paciente = p.id_paciente;

SELECT * FROM leito_reserva_email;


