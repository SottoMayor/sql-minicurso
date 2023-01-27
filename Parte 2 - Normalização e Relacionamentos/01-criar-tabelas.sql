CREATE TABLE planos(
    id SERIAL PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL UNIQUE,
    hotel_incluso boolean DEFAULT FALSE,
    transfer_incluso boolean DEFAULT FALSE
);

CREATE TABLE enderecos(
    id SERIAL PRIMARY KEY,
    estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(75)
);

CREATE TABLE turistas(
    id SERIAL PRIMARY KEY,
    nome varchar(255) NOT NULL,
    estado_nascimento VARCHAR(50),
    idade INT CHECK (idade > 0),
    endereco_id INT DEFAULT 1 REFERENCES enderecos (id) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

CREATE TABLE destinos(
    id SERIAL PRIMARY KEY,
    destino VARCHAR(255) NOT NULL UNIQUE,
    tem_praia BOOLEAN DEFAULT FALSE,
    capital BOOLEAN DEFAULT TRUE,
    avaliacao_media NUMERIC(2,1) CHECK (avaliacao_media > 0 AND avaliacao_media <= 5)
);