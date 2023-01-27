-- Todos as colunas
SELECT * FROM pessoas;

-- Colunas específicas, colunas resultantes e apelido para colunas
SELECT id AS Identificador, nome, (65 - idade) AS anos_aposentadoria FROM pessoas;