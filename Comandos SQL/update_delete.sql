USE leito_hospitalar;

INSERT INTO paciente(nome,data_nascimento,email) VALUES
	('Carlos Fonseca','1978-11-05','carlos123@email.com'),
	('Jonathan Cardoso','1999-06-21','jonathan.cardoso@email.com');

UPDATE paciente 
SET email = 'carlos.fonseca@email.com'
WHERE id_paciente = '9';

DELETE FROM paciente
WHERE id_paciente = '10';


