-- Exemplo 1 - Faz sentido
select * from turistas where idade > 50;
select * from turistas where idade < 25;

select * from turistas where idade > 50
UNION
select * from turistas where idade < 25 order by id asc;

-- Exemplo 2 - Não faz sentido
select * from turistas;
select * from planos;

select id, nome from turistas where idade > 35
UNION
select id, nome_plano from planos;