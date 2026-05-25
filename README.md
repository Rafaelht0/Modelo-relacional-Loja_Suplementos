# Modelo Relacional - Loja de Suplementos

Este projeto apresenta a modelagem e a implementação SQL de um sistema de gerenciamento para uma loja de suplementos alimentares.

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

## Como Executar

1. Abra seu SGBD (ex.: MySQL).
2. Execute o arquivo `loja.sql`.
3. O script cria o banco `Loja_suplementos` e as tabelas automaticamente.

## Autor

- Rafael
