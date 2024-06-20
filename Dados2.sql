USE AeroportoCN;

-- Populando a tabela Aeronaves
INSERT INTO Aeronaves (tipo, numero_poltronas) VALUES
('Boeing 737', 150),
('Airbus A320', 180),
('Embraer E190', 100),
('Boeing 777', 300),
('Airbus A380', 500),
('Cessna 172', 4),
('Boeing 787', 242),
('Airbus A350', 325);

-- Inserindo dados na tabela Voos
INSERT INTO Voos (aeroporto_origem, aeroporto_destino, horario_saida, horario_previsto_chegada, aeronave_id) VALUES
('São Paulo (GRU)', 'Rio de Janeiro (GIG)', '2024-07-01 08:00:00', '2024-07-01 09:00:00', 1),
('Brasília (BSB)', 'Salvador (SSA)', '2024-07-01 10:00:00', '2024-07-01 12:00:00', 2),
('Porto Alegre (POA)', 'Curitiba (CWB)', '2024-07-01 14:00:00', '2024-07-01 15:00:00', 3),
('Fortaleza (FOR)', 'Manaus (MAO)', '2024-07-02 16:00:00', '2024-07-02 19:00:00', 4),
('Belo Horizonte (CNF)', 'Recife (REC)', '2024-07-03 06:00:00', '2024-07-03 09:00:00', 5),
('Florianópolis (FLN)', 'Goiânia (GYN)', '2024-07-04 11:00:00', '2024-07-04 13:00:00', 6),
('Campinas (VCP)', 'Porto Seguro (BPS)', '2024-07-05 18:00:00', '2024-07-05 19:30:00', 7),
('Natal (NAT)', 'Vitória (VIX)', '2024-07-06 07:00:00', '2024-07-06 10:00:00', 8),
('Rio de Janeiro (GIG)', 'São Paulo (GRU)', '2024-08-10 09:00:00', '2024-08-10 10:00:00', 1),
('Salvador (SSA)', 'Brasília (BSB)', '2024-08-15 11:00:00', '2024-08-15 13:00:00', 2),
('Curitiba (CWB)', 'Porto Alegre (POA)', '2024-08-20 15:00:00', '2024-08-20 16:00:00', 3),
('Manaus (MAO)', 'Fortaleza (FOR)', '2024-09-02 17:00:00', '2024-09-02 20:00:00', 4),
('Recife (REC)', 'Belo Horizonte (CNF)', '2024-09-05 07:00:00', '2024-09-05 10:00:00', 5),
('Goiânia (GYN)', 'Florianópolis (FLN)', '2024-09-10 12:00:00', '2024-09-10 14:00:00', 6),
('Porto Seguro (BPS)', 'Campinas (VCP)', '2024-10-15 19:00:00', '2024-10-15 20:30:00', 7),
('Vitória (VIX)', 'Natal (NAT)', '2024-10-20 08:00:00', '2024-10-20 11:00:00', 8),
('São Paulo (GRU)', 'Rio de Janeiro (GIG)', '2024-11-01 08:00:00', '2024-11-01 09:00:00', 1),
('Brasília (BSB)', 'Salvador (SSA)', '2024-11-02 10:00:00', '2024-11-02 12:00:00', 2),
('Porto Alegre (POA)', 'Curitiba (CWB)', '2024-11-03 14:00:00', '2024-11-03 15:00:00', 3),
('Fortaleza (FOR)', 'Manaus (MAO)', '2024-11-04 16:00:00', '2024-11-04 19:00:00', 4),
('Belo Horizonte (CNF)', 'Recife (REC)', '2024-12-01 06:00:00', '2024-12-01 09:00:00', 5),
('Florianópolis (FLN)', 'Goiânia (GYN)', '2024-12-02 11:00:00', '2024-12-02 13:00:00', 6),
('Campinas (VCP)', 'Porto Seguro (BPS)', '2024-12-03 18:00:00', '2024-12-03 19:30:00', 7),
('Natal (NAT)', 'Vitória (VIX)', '2024-12-04 07:00:00', '2024-12-04 10:00:00', 8);

INSERT INTO Escalas (voo_id, aeroporto_saida, horario_saida) VALUES
(1, 'São Paulo (GRU)', '2024-07-01 08:00:00'),
(2, 'Brasília (BSB)', '2024-07-01 10:00:00'),
(3, 'Porto Alegre (POA)', '2024-07-01 14:00:00'),
(4, 'Fortaleza (FOR)', '2024-07-02 16:00:00'),
(5, 'Belo Horizonte (CNF)', '2024-07-03 06:00:00'),
(6, 'Florianópolis (FLN)', '2024-07-04 11:00:00'),
(7, 'Campinas (VCP)', '2024-07-05 18:00:00'),
(8, 'Natal (NAT)', '2024-07-06 07:00:00'),
(9, 'Rio de Janeiro (GIG)', '2024-08-10 09:00:00'),
(10, 'Salvador (SSA)', '2024-08-15 11:00:00'),
(11, 'Curitiba (CWB)', '2024-08-20 15:00:00'),
(12, 'Manaus (MAO)', '2024-09-02 17:00:00'),
(13, 'Recife (REC)', '2024-09-05 07:00:00'),
(14, 'Goiânia (GYN)', '2024-09-10 12:00:00'),
(15, 'Porto Seguro (BPS)', '2024-10-15 19:00:00'),
(16, 'Vitória (VIX)', '2024-10-20 08:00:00'),
(17, 'São Paulo (GRU)', '2024-11-01 08:00:00'),
(18, 'Brasília (BSB)', '2024-11-02 10:00:00'),
(19, 'Porto Alegre (POA)', '2024-11-03 14:00:00'),
(20, 'Fortaleza (FOR)', '2024-11-04 16:00:00'),
(21, 'Belo Horizonte (CNF)', '2024-12-01 06:00:00'),
(22, 'Florianópolis (FLN)', '2024-12-02 11:00:00'),
(23, 'Campinas (VCP)', '2024-12-03 18:00:00'),
(24, 'Natal (NAT)', '2024-12-04 07:00:00');

-- Populando a tabela Poltronas
INSERT INTO Poltronas (aeronave_id, numero, localizacao, disponibilidade) VALUES
(1, '1A', 'janela', TRUE),
(1, '1B', 'corredor', TRUE),
(2, '2A', 'janela', TRUE),
(2, '2B', 'corredor', TRUE),
(3, '3A', 'janela', TRUE),
(3, '3B', 'corredor', TRUE),
(4, '4A', 'janela', TRUE),
(4, '4B', 'corredor', TRUE),
(5, '5A', 'janela', TRUE),
(5, '5B', 'corredor', TRUE),
(6, '6A', 'janela', TRUE),
(6, '6B', 'corredor', TRUE),
(7, '7A', 'janela', TRUE),
(7, '7B', 'corredor', TRUE),
(8, '8A', 'janela', TRUE),
(8, '8B', 'corredor', TRUE);

INSERT INTO ClientesPreferenciais (nome, email, telefone, data_nascimento, gestante, idoso) VALUES
('João Silva', 'joao.silva@gmail.com', '11987654321', '1950-01-01', FALSE, TRUE),
('Maria Oliveira', 'maria.oliveira@gmail.com', '21987654321', '1955-05-15', FALSE, TRUE),
('Carlos Souza', 'carlos.souza@gmail.com', '31987654321', '1980-10-10', FALSE, FALSE),
('Ana Pereira', 'ana.pereira@gmail.com', '41987654321', '1990-02-20', TRUE, FALSE),
('Lucas Lima', 'lucas.lima@gmail.com', '51987654321', '1995-03-30', FALSE, FALSE),
('Mariana Rocha', 'mariana.rocha@gmail.com', '61987654321', '1988-07-07', TRUE, FALSE),
('Pedro Costa', 'pedro.costa@gmail.com', '71987654321', '1992-08-12', FALSE, FALSE),
('Julia Almeida', 'julia.almeida@gmail.com', '81987654321', '2000-12-01', FALSE, FALSE),
('Joana Santos', 'joana.santos@gmail.com', '11987654322', '1985-04-18', TRUE, FALSE),
('Paulo Ferreira', 'paulo.ferreira@gmail.com', '21987654322', '1948-09-23', FALSE, TRUE),
('Carla Mendes', 'carla.mendes@gmail.com', '31987654322', '1990-05-11', TRUE, FALSE),
('Rafael Souza', 'rafael.souza@gmail.com', '41987654322', '1952-11-29', FALSE, TRUE),
('Laura Costa', 'laura.costa@gmail.com', '51987654322', '1987-06-15', TRUE, FALSE),
('Miguel Pereira', 'miguel.pereira@gmail.com', '61987654322', '1940-12-01', FALSE, TRUE);



-- Populando a tabela Reservas
INSERT INTO Reservas (voo_id, poltrona_id, cliente_id) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 5, 3),
(4, 7, 4),
(5, 9, 5),
(6, 11, 6),
(7, 13, 7),
(8, 15, 8);


SELECT * FROM Voos ORDER BY horario_saida;
SELECT * FROM Escalas ORDER BY horario_saida;



SET SQL_SAFE_UPDATES = 0;
