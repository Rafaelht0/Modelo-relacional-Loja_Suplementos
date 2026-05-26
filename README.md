# Modelo Relacional - Loja de Suplementos

Este projeto apresenta a modelagem e a implementacao SQL de um sistema de gerenciamento para uma loja de suplementos alimentares.

## Objetivo

Organizar:
- cadastro de funcionarios;
- cadastro de produtos;
- registro de vendas;
- itens vendidos em cada venda.

## Estrutura do Banco

Tabelas principais:
- `Funcionario`
- `Produto`
- `Vendas`
- `ITENS_VENDA` (tabela associativa entre `Vendas` e `Produto`)

## Relacionamentos

- `Funcionario` 1:N `Vendas`
- `Vendas` N:N `Produto` (resolvido por `ITENS_VENDA`)

## Arquivos do Projeto

- `loja.sql`: cria o banco e as tabelas.
- `inserindo.sql`: insere dados de exemplo.
- `consulta.sql`: executa consultas simples para validacao.

## Como Executar

1. Abra seu SGBD (ex.: MySQL).
2. Execute `loja.sql`.
3. Execute `inserindo.sql`.
4. Execute `consulta.sql`.

## Autor

- Rafael
