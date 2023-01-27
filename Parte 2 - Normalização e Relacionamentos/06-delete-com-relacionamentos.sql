-- Dados antes do update
SELECT * FROM turistas;

-- Esse comando dispara a constraint associada à chave estrangeira
DELETE FROM enderecos WHERE id = 3;

-- Dados do endereço atualizados, o endereço de ID 3 foi excluido
SELECT * FROM enderecos;

-- Mudança reflete na tabela turistas, por conta da constraint 'ON DELETE SET DEFAULT', onde o DEFAULT é 1 como definimos na tabela
SELECT * FROM turistas;
