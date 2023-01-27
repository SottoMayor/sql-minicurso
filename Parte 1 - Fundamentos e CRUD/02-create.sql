-- Erro ENUM
INSERT INTO pessoas(nome, apelido, idade, altura, eh_calvo, data_nascimento, gelada_preferida) VALUES (NULL, NULL, 22, 1.86, FALSE, '2000-10-24', 'Itaipava');

-- Erro constraint
INSERT INTO pessoas(nome, apelido, idade, altura, eh_calvo, data_nascimento) VALUES (NULL, NULL, -22, 3, FALSE, '2000-10-24');

INSERT INTO pessoas(nome, idade, altura, eh_calvo, data_nascimento, gelada_preferida) VALUES ('David', 22, 1.86, FALSE, '2000-10-24', NULL);