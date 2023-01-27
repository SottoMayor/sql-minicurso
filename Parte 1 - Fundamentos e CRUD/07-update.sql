-- Erro
UPDATE pessoas SET gelada_preferida = 'Itaipava' WHERE id=1;

UPDATE pessoas SET gelada_preferida = 'Brahma' WHERE id=1;

UPDATE pessoas SET gelada_preferida = 'Antarctica' WHERE idade > 40 AND eh_calvo IS TRUE;