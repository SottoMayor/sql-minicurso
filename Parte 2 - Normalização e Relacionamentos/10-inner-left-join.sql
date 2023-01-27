-- Combinando Inner join com Left join, a das tabelas ordem importa

-- Primeiro 

select * from viagens v LEFT JOIN planos p ON p.id = v.plano_id ;

select * from viagens v LEFT JOIN planos p ON p.id = v.plano_id INNER JOIN turistas t ON v.turista_id = t.id;

-- Segundo

select * from planos p LEFT JOIN viagens v ON p.id = v.plano_id ;

select * from planos p LEFT JOIN viagens v ON p.id = v.plano_id INNER JOIN turistas t ON v.turista_id = t.id;