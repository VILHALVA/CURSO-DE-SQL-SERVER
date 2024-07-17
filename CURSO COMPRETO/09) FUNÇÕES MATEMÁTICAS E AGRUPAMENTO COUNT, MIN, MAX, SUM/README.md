# FUNÇÕES MATEMÁTICAS E AGRUPAMENTO COUNT, MIN, MAX, SUM
Vamos explorar as funções matemáticas e de agregação mais comuns no SQL Server, que são fundamentais para realizar cálculos e operações sobre os dados em consultas SQL. Estas funções incluem `COUNT`, `MIN`, `MAX`, e `SUM`, que são utilizadas principalmente em combinação com a cláusula `SELECT` e, em alguns casos, com `GROUP BY` para operações de agrupamento.

## 1. Função COUNT
A função `COUNT` é utilizada para contar o número de linhas que atendem a determinada condição.

**Exemplo simples de `COUNT`:**
```sql
SELECT COUNT(*) AS TotalClientes
FROM Clientes;
```

**Explicação:** Este comando conta o número total de registros na tabela `Clientes`.

**Exemplo de `COUNT` com `WHERE`:**
```sql
SELECT COUNT(*) AS TotalPedidos
FROM Pedidos
WHERE DataPedido >= '2023-01-01';
```

**Explicação:** Este comando conta o número de pedidos na tabela `Pedidos` feitos a partir de 1 de janeiro de 2023.

## 2. Funções MIN e MAX
As funções `MIN` e `MAX` são usadas para encontrar o valor mínimo e máximo em uma coluna, respectivamente.

**Exemplo de `MIN`:**
```sql
SELECT MIN(ValorTotal) AS MenorValor
FROM Pedidos;
```

**Explicação:** Este comando retorna o menor valor encontrado na coluna `ValorTotal` da tabela `Pedidos`.

**Exemplo de `MAX`:**
```sql
SELECT MAX(ValorTotal) AS MaiorValor
FROM Pedidos;
```

**Explicação:** Este comando retorna o maior valor encontrado na coluna `ValorTotal` da tabela `Pedidos`.

## 3. Função SUM
A função `SUM` é utilizada para calcular a soma dos valores de uma coluna.

**Exemplo de `SUM`:**
```sql
SELECT SUM(ValorTotal) AS TotalVendas
FROM Pedidos;
```

**Explicação:** Este comando calcula o total de vendas somando os valores da coluna `ValorTotal` da tabela `Pedidos`.

## 4. Funções de Agrupamento
As funções `COUNT`, `MIN`, `MAX` e `SUM` também podem ser usadas em conjunto com a cláusula `GROUP BY` para realizar cálculos de agregação em grupos de dados.

**Exemplo com `GROUP BY` e `COUNT`:**
```sql
SELECT Categoria, COUNT(*) AS TotalProdutos
FROM Produtos
GROUP BY Categoria;
```

**Explicação:** Este comando conta o número de produtos em cada categoria da tabela `Produtos`.

**Exemplo com `GROUP BY` e `SUM`:**
```sql
SELECT VendedorId, SUM(ValorVenda) AS TotalVendas
FROM Vendas
GROUP BY VendedorId;
```

**Explicação:** Este comando calcula o total de vendas feitas por cada `VendedorId` na tabela `Vendas`.

## Considerações Finais
- As funções matemáticas e de agregação (`COUNT`, `MIN`, `MAX`, `SUM`) são poderosas ferramentas para realizar cálculos sobre dados em consultas SQL.
- Elas podem ser usadas diretamente na cláusula `SELECT` ou em combinação com `GROUP BY` para operações de agregação mais complexas.
- Sempre verifique os tipos de dados e as condições ao usar essas funções para garantir resultados precisos e úteis para sua análise de dados.

