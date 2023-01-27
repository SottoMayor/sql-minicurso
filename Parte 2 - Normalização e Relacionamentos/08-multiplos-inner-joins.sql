SELECT *
FROM viagens;

SELECT *
FROM destinos;

SELECT *
FROM turistas;

SELECT *
FROM planos;

-- Multiplos Inner Joins
SELECT *
FROM viagens v
    INNER JOIN destinos d ON d.id = v.destino_id
    INNER JOIN turistas t ON t.id = v.turista_id
    INNER JOIN planos p ON p.id = v.plano_id
    INNER JOIN enderecos e ON e.id = t.endereco_id;

-- Multiplos Inner Joins filtrando por campos
SELECT t.nome as nome_turista,
    t.idade,
    e.estado as estado_moradia,
    e.cidade as cidade_moradia,
    p.nome_plano,
    d.destino,
    d.avaliacao_media,
    v.data_ida,
    v.data_volta
FROM viagens v
    INNER JOIN destinos d ON d.id = v.destino_id
    INNER JOIN turistas t ON t.id = v.turista_id
    INNER JOIN planos p ON p.id = v.plano_id
    INNER JOIN enderecos e ON e.id = t.endereco_id;