CREATE DATABASE IF NOT EXISTS leito_hospitalar;
USE leito_hospitalar;

CREATE TABLE IF NOT EXISTS paciente (
	id_paciente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL
);

DESCRIBE paciente;

CREATE TABLE IF NOT EXISTS leito (
	id_leito INT PRIMARY KEY AUTO_INCREMENT,
	numero_quarto INT NOT NULL,
	tipo VARCHAR(50) NOT NULL
);

DESCRIBE leito;
	