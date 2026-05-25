CREATE DATABASE Loja_suplementos;
USE Loja_suplementos;

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    cargo VARCHAR(100) NOT NULL
);

CREATE TABLE Vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT NOT NULL,
    data_venda DATE NOT NULL,
    valor_total DECIMAL (10,2) NOT NULL,
    forma_pagamento VARCHAR(50),

    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
     ON DELETE RESTRICT
     ON UPDATE CASCADE
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL, 
    preco_unitario DECIMAL (10,2) NOT NULL,
    quantidade_estoque INT NOT NULL CHECK (quantidade_estoque >= 0)
);

CREATE TABLE ITENS_VENDA (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,

    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda)
     ON DELETE RESTRICT
     ON UPDATE CASCADE,
    
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
     ON DELETE RESTRICT
     ON UPDATE CASCADE,

    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL (10,2) NOT NULL
);
