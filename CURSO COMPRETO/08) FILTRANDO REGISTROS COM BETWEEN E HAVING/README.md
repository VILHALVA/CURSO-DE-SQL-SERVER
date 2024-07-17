# FILTRANDO REGISTROS COM BETWEEN E HAVING
Vamos explorar como utilizar as cláusulas `BETWEEN` e `HAVING` para filtrar registros em consultas SQL no SQL Server. Cada uma dessas cláusulas desempenha um papel específico na aplicação de condições em consultas, especialmente quando se trata de intervalos de valores e agregações.

## 1. Cláusula BETWEEN
A cláusula `BETWEEN` é utilizada para filtrar resultados com base em um intervalo de valores. Ela é muito útil para consultar dados que se enquadram em um intervalo específico de números, datas ou caracteres alfanuméricos.

**Exemplo com `BETWEEN` em números:**
```sql
SELECT *
FROM Pedidos
WHERE ValorTotal BETWEEN 100 AND 500;
```

**Explicação:** Este comando seleciona todos os campos da tabela `Pedidos` onde o `ValorTotal` está entre 100 e 500, incluindo os limites.

**Exemplo com `BETWEEN` em datas:**
```sql
SELECT *
FROM Pedidos
WHERE DataPedido BETWEEN '2023-01-01' AND '2023-12-31';
```

**Explicação:** Aqui, estamos selecionando registros da tabela `Pedidos` onde a `DataPedido` está dentro do ano de 2023.

## 2. Cláusula HAVING
A cláusula `HAVING` é usada em conjunto com a cláusula `GROUP BY` para filtrar registros de grupos de dados baseados em condições agregadas.

**Exemplo com `HAVING` em uma agregação simples:**
```sql
SELECT ClienteId, COUNT(*) AS TotalPedidos
FROM Pedidos
GROUP BY ClienteId
HAVING COUNT(*) > 2;
```

**Explicação:** Este comando conta o número de pedidos por cliente na tabela `Pedidos` e seleciona apenas os clientes que têm mais de 2 pedidos (`COUNT(*) > 2`).

## Exemplos Combinados
Você pode combinar `BETWEEN` e `HAVING` com outras cláusulas `WHERE`, `AND`, `OR`, `IN`, `LIKE`, conforme necessário para criar condições mais complexas e específicas em suas consultas.

**Exemplo combinado:**
```sql
SELECT *
FROM Pedidos
WHERE DataPedido BETWEEN '2023-01-01' AND '2023-12-31'
  AND ValorTotal >= 100
  AND ValorTotal <= 500
GROUP BY ClienteId
HAVING COUNT(*) > 1;
```

**Explicação:** Este comando seleciona pedidos da tabela `Pedidos` feitos em 2023 com um `ValorTotal` entre 100 e 500. Os resultados são agrupados por `ClienteId` e apenas os clientes com mais de um pedido são incluídos (`HAVING COUNT(*) > 1`).

## Considerações Finais
- A cláusula `BETWEEN` é útil para filtrar valores dentro de um intervalo específico.
- A cláusula `HAVING` é usada em conjunto com `GROUP BY` para filtrar resultados de agregações.
- Sempre verifique os tipos de dados e os critérios ao usar `BETWEEN` e `HAVING` para garantir que os resultados sejam precisos e úteis para sua consulta.

