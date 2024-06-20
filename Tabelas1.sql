CREATE DATABASE AeroportoCN;
USE AeroportoCN;

-- Tabela de Aeronaves
CREATE TABLE Aeronaves (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key Constraint
    tipo VARCHAR(50) NOT NULL,
    numero_poltronas INT NOT NULL
);

-- Tabela de Voos
CREATE TABLE Voos (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key Constraint
    aeroporto_origem VARCHAR(100) NOT NULL,
    aeroporto_destino VARCHAR(100) NOT NULL,
    horario_saida DATETIME NOT NULL,
    horario_previsto_chegada DATETIME NOT NULL,
    aeronave_id INT,
    FOREIGN KEY (aeronave_id) REFERENCES Aeronaves(id) -- Foreign Key Constraint
);

-- Tabela de Escalas
CREATE TABLE Escalas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key Constraint
    voo_id INT,
    aeroporto_saida VARCHAR(100) NOT NULL,
    horario_saida DATETIME NOT NULL,
    FOREIGN KEY (voo_id) REFERENCES Voos(id) -- Foreign Key Constraint
);

-- Tabela de Poltronas
CREATE TABLE Poltronas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key Constraint
    aeronave_id INT,
    numero VARCHAR(10) NOT NULL,
    localizacao ENUM('janela', 'corredor', 'direita', 'esquerda') NOT NULL, -- ENUM Constraint
    disponibilidade BOOLEAN DEFAULT TRUE, -- BOOLEAN Constraint
    FOREIGN KEY (aeronave_id) REFERENCES Aeronaves(id) -- Foreign Key Constraint
);

CREATE TABLE ClientesPreferenciais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    gestante BOOLEAN DEFAULT FALSE,
    idoso BOOLEAN DEFAULT FALSE
);


CREATE TABLE Reservas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key Constraint
    voo_id INT,
    poltrona_id INT,
    cliente_id INT,
    FOREIGN KEY (voo_id) REFERENCES Voos(id), -- Foreign Key Constraint
    FOREIGN KEY (poltrona_id) REFERENCES Poltronas(id), -- Foreign Key Constraint
    FOREIGN KEY (cliente_id) REFERENCES ClientesPreferenciais(id) -- Foreign Key Constraint
);









