USE leito_hospitalar;

CREATE TABLE reserva (
	id_reserva INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente INT NOT NULL,
	id_leito INT NOT NULL,
	FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
	FOREIGN KEY (id_leito) REFERENCES leito(id_leito)
);

DESCRIBE reserva;

ALTER TABLE reserva 
ADD COLUMN data_reservas DATETIME NOT NULL;

ALTER TABLE reserva 
CHANGE data_reservas data_reserva DATE NOT NULL;

INSERT INTO reserva (id_paciente, id_leito, data_reserva) VALUES
    (1, 7, '2023-11-01'),
    (2, 2, '2023-11-05'),
    (3, 2, '2023-11-10'),
    (4, 2, '2023-11-15'), 
    (5, 5, '2023-11-20'), 
    (6, 7, '2023-11-25'), 
    (7, 7, '2023-11-30'), 
    (8, 8, '2023-12-01');

SELECT * FROM reserva;