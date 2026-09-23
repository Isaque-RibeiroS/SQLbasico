USE leito_hospitalar;

SELECT * FROM paciente;

-- Mostrar 'nome' de pacientes quando 'id_paciente' estiver entre 5 e 9
SELECT nome FROM paciente
WHERE id_paciente BETWEEN '5' AND '9'
ORDER BY nome ASC;

-- Selecionar 'email' das pessoas cujo o nome inicia com a letra 'C'
SELECT email FROM paciente 
WHERE nome LIKE 'c%';

-- Mostrar números de registros de reserva entre as datas de 2023-11-01 a 2023-11-15
SELECT COUNT(*) FROM reserva 
WHERE data_reserva BETWEEN '2023-11-01' AND '2023-11-15';

-- Mostra a última reserva prevista 
SELECT MAX(data_reserva) FROM reserva;

-- Mostra a primeira reserva prevista
SELECT MIN(data_reserva) FROM reserva;

-- Mostra os grupos em que os leitos estão divididos
SELECT tipo FROM leito
GROUP BY tipo;









