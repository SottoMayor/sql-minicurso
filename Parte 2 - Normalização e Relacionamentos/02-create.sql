INSERT INTO planos (nome_plano, hotel_incluso, transfer_incluso)
VALUES ('Hospedagem', TRUE, DEFAULT),
    ('Transfer', DEFAULT, TRUE),
    ('Completo', TRUE, TRUE);
INSERT INTO enderecos (
        estado,
        cidade,
        bairro,
        logradouro,
        numero,
        complemento
    )
VALUES (
        '-',
        '-',
        '-',
        '-',
        '-',
        NULL
    ),
    (
        'AM',
        'Manaus',
        'Ponta Negra',
        'Avenida Coronel Teixeira',
        '4475',
        'Condomínio Acquarelle'
    ),
    (
        'AM',
        'Manaus',
        'Gilberto Mestrinho',
        'Rua Ipê-Rosa',
        '123',
        NULL
    ),
    (
        'AM',
        'Manaus',
        'Alvorada',
        'Rua Itaquitinga',
        '42',
        'Perto do Studio da Bella'
    ),
    (
        'AL',
        'Maceió',
        'Trapiche da Barra',
        'Rua Sebastião Vasconcelos',
        '29',
        NULL
    ),
    (
        'PB',
        'Santa Rita',
        'Municípios',
        'Santa Rita',
        '5-B',
        'Perto do Studio da Bella'
    ),
    (
        'MG',
        'Betim',
        'Santo Afonso',
        'Rua Aracaju',
        '59',
        'Ao lado da loja Casa das Panelas'
    ),
    (
        'RJ',
        'Belford Roxo',
        'Heliópolis',
        'Rua Alfredo Barbosa',
        '18-A',
        'Perto do Studio da Bella'
    ),
    (
        'PR',
        'Londrina',
        'Tarobá',
        'Rua Ernestina Duque Estrada',
        '12',
        NULL
    );
INSERT INTO turistas (
        nome,
        estado_nascimento,
        idade,
        endereco_id
    )
VALUES (
        'Marlene Patrícia Martins Figueiredo',
        'RS',
        53,
        5
    ),
    (
        'Isabel Liz Martins Figueiredo',
        'RS',
        24,
        5
    ),
    ('Henrique João Figueiredo', 'RS', 55, 5),
    ('Marcos Vinicius Felipe Araújo', 'AM', 21, 2),
    ('Yasmin Betina Ribeiro', 'AL', 30, 4),
    ('Lívia Benedita Cecília', 'CE', 24, 2),
    ('Sophia Mariane Silva', 'AM', 45, 2),
    ('Eduardo Henry Silva', 'SP', 26, 8),
    ('Geraldo Igor Almada', 'MG', 50, 7),
    ('Cristiane Tatiane Ester Lima', 'MG', 34, 3),
    ('Luzia Bianca da Cruz', 'PR', 25, 9),
    ('Vinicius Gabriel André da Cruz', 'PR', 23, 9);

INSERT INTO destinos (destino, tem_praia, capital, avaliacao_media)
VALUES ('Fortaleza-CE', TRUE, TRUE, 4.5),
('Jericoacoara-CE', TRUE, FALSE, 4.9),
('Porto de Galinhas-PE', TRUE, FALSE, 4.4),
('Canelas-RS', FALSE, FALSE, 4.5),
('Presidente Figueiredo-AM', FALSE, FALSE, 4.7),
('Campo Grande-MS', FALSE, TRUE, 4.4),
('São Paulo-SP', FALSE, TRUE, 4.5),
('Rio de Janeiro-RJ', TRUE, TRUE, 4.5),
('Angra dos Reis-RJ', TRUE, FALSE, 4.8);

