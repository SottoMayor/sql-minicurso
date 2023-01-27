CREATE TYPE cervejas AS ENUM('Skol', 'Brahma', 'Amstel', 'Devassa', 'Heineken', 'Budweiser', 'Antarctica', 'Schin');

-- Tabela apenas com definição de tipos
CREATE TABLE IF NOT EXISTS pessoas(
	nome VARCHAR(100),
  	apelido VARCHAR(50),
    genero VARCHAR(1),
  	idade INTEGER,
 	altura NUMERIC(3,2),
  	eh_calvo BOOLEAN,
  	data_nascimento DATE,
 	gelada_preferida cervejas
);

-- Tabela com constrains, valores padrões e chave primária
CREATE TABLE IF NOT EXISTS pessoas(
  	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
  	apelido VARCHAR(50) UNIQUE,
    genero VARCHAR(1) DEFAULT 'M',
  	idade INTEGER CHECK (idade > 0),
 	altura NUMERIC(3,2) NOT NULL CHECK(altura > 0 and altura < 3),
  	eh_calvo BOOLEAN DEFAULT FALSE,
  	data_nascimento DATE NOT NULL,
 	gelada_preferida cervejas
);