USE Loja_suplementos;

INSERT INTO Funcionario (nome, cpf, cargo) VALUES
('Daniel', '11122233301', 'Vendedor'),
('Mateus', '11122233302', 'Vendedor'),
('Rafael', '11122233303', 'Gerente');

INSERT INTO Produto (nome_produto, marca, preco_unitario, quantidade_estoque) VALUES
('Whey Protein 900g', 'Optimum Nutrition', 189.90, 50),
('Creatina 300g', 'Darkness', 89.90, 80),
('BCAA 200 caps', 'Integralmedica', 69.90, 60),
('Pre-Treino 300g', 'Black Skull', 129.90, 40),
('Glutamina 300g', 'Optimum Nutrition', 99.90, 45),
('Multivitaminico 60 caps', 'Centrum', 39.90, 100);

INSERT INTO Vendas (data_venda, valor_total, forma_pagamento, id_funcionario) VALUES
('2026-05-01', 279.80, 'PIX', 1),
('2026-05-05', 89.90, 'Cartao Credito', 2),
('2026-05-10', 259.80, 'Dinheiro', 3),
('2026-05-15', 169.80, 'PIX', 1),
('2026-05-20', 129.90, 'Cartao Debito', 2),
('2026-05-23', 189.90, 'PIX', 3);

INSERT INTO ITENS_VENDA (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 189.90),
(1, 3, 1, 69.90),
(2, 2, 1, 89.90),
(3, 1, 1, 189.90),
(3, 4, 1, 129.90),
(4, 5, 1, 99.90),
(4, 6, 1, 39.90),
(5, 4, 1, 129.90),
(6, 1, 1, 189.90);
