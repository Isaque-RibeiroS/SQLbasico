# SQLbasico
Lista de comandos DDL/DML/DQL para manipulção de dados de modelo relacional.
## Descrição:

## create_database

Uso do comando **CREATE** para criação do banco de dados 'leito_hospitalar' e suas tabelas, sendo elas:

**paciente**
- id_paciente (INT chave primaria)
- nome (VARCHAR)
- email (VARCHAR)
- data_nascimento (DATE)

**leito**
- id_leito (INT chave primaria)
- numero_quarto (INT)
- tipo (VARCHAR)

## insert_values

Inserindo registros para ambas as tabelas que correspondem ao banco de dados 'leito_hospitalar', tendo o uso do comando **INSERT INTO** para possibilitar tal ação.

## update_delete

Usando como exemplo 2 registros adicionais na tabela 'paciente' feitos no arquivo, ocorre a demonstração do uso dos comandos **DELETE** e **UPDATE**.

## table_reserva

Criação da tabela 'reserva', com a adição da FOREIGN KEY para referenciar outras tabelas. Sendo sua estrutura formada pelas colunas:
- id_reserva (INT chave primária)
- id_paciente (INT chave estrangeira)
- id_leito (INT chave estrangeira)

Em seguida, com o uso demonstrativo dos conjuntos de comandos disponíveis para **ALTER TABLE (como ADD COLUMN e CHANGE)**, foi adicionado uma nova coluna chamada **data_reserva(DATE)** para a tabela 'reserva'.

## query_select

Uso dos conjuntos de comandos disponíveis para uso do SELECT, o arquivo possui as seguintes opções de query, respectivamente o comando utilizado para sua construção:
- Mostrar 'nome' de pacientes quando 'id_paciente' estiver entre 5 e 9. (**BETWEEN min AND max**)
- Selecionar 'email' das pessoas cujo o nome inicia com a letra 'C'. (**LIKE 'intervalo'**)
- Mostrar números de registros de reserva entre as datas de 2023-11-01 a 2023-11-15. (**BETWEEN min AND max**)
- Mostra a última reserva prevista. (**MAX(coluna)**)
- Mostra a primeira reserva prevista. (**MIN(coluna)**)
- Mostra os grupos em que os leitos estão divididos. (**GROUP BY coluna**)

## join_view

Criação de atalhos de consulta denominada como **VIEW**, tendo como exemplo 2 queries utilizando a estrutura de comando  **JOIN (RIGHT e INNER)**. Criando assim, as views:

- **reserva_paciente:** Seleciona nomes de pacientes e suas respectivas reservas.
- **leito_reserva_email:** Seleção do n° dos quartos e tipo em uma data reservada, 
indicando o email do paciente ocupante da reserva.
