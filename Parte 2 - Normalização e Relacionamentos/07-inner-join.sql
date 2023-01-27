SELECT *
FROM turistas;

SELECT *
FROM enderecos;

-- INNER JOIN
SELECT *
FROM turistas t
    INNER JOIN enderecos e ON t.endereco_id = e.id;

-- INNER JOIN com campos selecionados
SELECT nome as nome_turista,
    idade,
    estado_nascimento,
    estado as estado_moradia,
    cidade
FROM turistas t
    INNER JOIN enderecos e ON t.endereco_id = e.id;

-- INNER JOIN com where 
SELECT nome as nome_turista, idade, estado_nascimento, estado as estado_moradia, cidade, complemento FROM turistas t INNER JOIN enderecos e ON t.endereco_id = e.id
where e.complemento IS NOT NULL;

SELECT nome as nome_turista, idade, estado_nascimento, estado as estado_moradia, cidade, complemento FROM turistas t INNER JOIN enderecos e ON t.endereco_id = e.id
where e.complemento IS NOT NULL and idade between 25 and 30;