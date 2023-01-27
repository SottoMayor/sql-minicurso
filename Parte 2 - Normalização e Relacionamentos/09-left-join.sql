select * from viagens;

select * from planos;

-- LEFT JOIN - A posição das tabelas importam...
select * from viagens v LEFT JOIN planos p ON p.id = v.plano_id;

select * from planos p LEFT JOIN viagens v ON p.id = v.plano_id;
