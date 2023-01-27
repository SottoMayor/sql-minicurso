-- Dados antes do update
SELECT * FROM turistas;

-- Esse comando dispara a constraint associada à chave estrangeira
UPDATE enderecos SET id = 100 WHERE id = 2;

-- Dados do endereço atualizados, ID 2 agora é ID 100
SELECT * FROM enderecos;

-- Mudança reflete na tabela turistas, por conta da constraint 'ON UPDATE CASCADE'
SELECT * FROM turistas;
