-- READ com WHERE e ...

-- ... operadores lógicos AND e OR
SELECT * FROM pessoas WHERE gelada_preferida = 'Brahma' AND idade > 35;
SELECT * FROM pessoas WHERE gelada_preferida = 'Brahma' OR idade > 35;
SELECT * FROM pessoas WHERE (gelada_preferida = 'Brahma' AND idade < 40) OR idade > 50;

-- ... NULL, IS, IN e NOT
SELECT * FROM pessoas WHERE apelido IS NULL;
SELECT * FROM pessoas WHERE apelido IS NULL OR eh_calvo IS FALSE;
SELECT * FROM pessoas WHERE apelido IS NULL AND gelada_preferida IS NOT NULL;
SELECT * FROM pessoas WHERE id IN (1, 2, 4, 8, 3, 9, 12);
SELECT * FROM pessoas WHERE gelada_preferida NOT IN ('Brahma', 'Skol');
SELECT * FROM pessoas WHERE gelada_preferida NOT IN ('Brahma', 'Skol') OR gelada_preferida IS NULL;

-- ... entre intervalos
SELECT * FROM pessoas WHERE altura BETWEEN 1.6 AND 1.8;
SELECT * FROM pessoas WHERE idade BETWEEN 20 AND 40;
SELECT * FROM pessoas WHERE (idade BETWEEN 20 AND 40) AND gelada_preferida IS NULL;
SELECT * FROM pessoas WHERE data_nascimento BETWEEN '1980-01-01' AND '2010-12-31';
SELECT * FROM pessoas WHERE (data_nascimento BETWEEN '1975-01-01' AND '2010-12-31') AND eh_calvo IS TRUE AND (altura BETWEEN 1.6 AND 1.7);

-- ... entre nomes
-- Estritamente IGUAL
SELECT * FROM pessoas WHERE genero = 'M'; 
SELECT * FROM pessoas WHERE nome = 'Davi';
SELECT * FROM pessoas WHERE nome LIKE 'Davi';
-- Busca no meio do texto
SELECT * FROM pessoas WHERE nome LIKE 'Davi%';
SELECT * FROM pessoas WHERE nome LIKE '%Davi%';
SELECT * FROM pessoas WHERE nome LIKE '%DAVI%';
SELECT * FROM pessoas WHERE nome ILIKE '%DAVI%';

SELECT * FROM pessoas WHERE nome ILIKE '%DRUMOND' AND genero = 'F';