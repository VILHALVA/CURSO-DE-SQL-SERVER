# FUNÇÕES
No SQL Server, as funções desempenham um papel importante ao realizar operações complexas e retornar resultados específicos baseados em parâmetros ou dados de entrada. Existem diferentes tipos de funções que podem ser usadas para manipular dados, realizar cálculos, formatar valores e muito mais. Vamos explorar os principais tipos de funções no SQL Server:

## 1. Funções de Agregação
As funções de agregação são usadas para realizar cálculos em um conjunto de valores e retornar um único valor resumido. As principais funções de agregação incluem `SUM`, `AVG`, `MIN`, `MAX` e `COUNT`.

**Exemplo com `SUM`:**
```sql
SELECT SUM(Quantity) AS TotalQuantity
FROM Sales;
```

**Resultado:** Retorna a soma total da coluna `Quantity` da tabela `Sales`.

## 2. Funções Escalares
As funções escalares operam em uma única linha de dados por vez e retornam um único valor para cada linha processada. Elas podem ser funções definidas pelo usuário ou funções embutidas fornecidas pelo SQL Server, como `LOWER`, `UPPER`, `LEN`, etc.

**Exemplo com `LOWER`:**
```sql
SELECT LOWER(ProductName) AS LowerCaseName
FROM Products;
```

**Resultado:** Retorna o nome do produto em letras minúsculas.

## 3. Funções de Tabela Inline e Multilinha
As funções de tabela são usadas para retornar uma tabela de dados como resultado. Elas podem ser funções de tabela inline (retornam uma tabela única) ou funções de tabela multilinha (retornam várias tabelas).

**Exemplo de função de tabela inline:**
```sql
CREATE FUNCTION GetProductsByCategory(@CategoryID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT ProductID, ProductName, Price
    FROM Products
    WHERE CategoryID = @CategoryID
);
```

**Exemplo de uso de função de tabela inline:**
```sql
SELECT *
FROM GetProductsByCategory(1); -- Retorna todos os produtos da categoria 1
```

## 4. Funções de Janela (Window Functions)
As funções de janela permitem realizar cálculos em um conjunto de linhas relacionadas a cada linha do resultado. Elas são usadas com a cláusula `OVER` e podem incluir funções como `ROW_NUMBER`, `RANK`, `SUM` com `OVER`, entre outras.

**Exemplo com `ROW_NUMBER`:**
```sql
SELECT ProductID, ProductName, CategoryID,
       ROW_NUMBER() OVER(ORDER BY ProductID) AS RowNumber
FROM Products;
```

**Resultado:** Retorna o número da linha para cada produto, ordenado por `ProductID`.

## 5. Funções de Conversão e Manipulação de Dados
As funções de conversão e manipulação de dados são usadas para modificar o tipo de dados de uma expressão. Algumas funções comuns incluem `CAST`, `CONVERT`, `COALESCE`, `ISNULL`, entre outras.

**Exemplo com `CONVERT`:**
```sql
SELECT CONVERT(VARCHAR(10), OrderDate, 103) AS FormattedDate
FROM Orders;
```

**Resultado:** Converte a data da coluna `OrderDate` para uma string no formato `dd/MM/yyyy`.

## Considerações Finais
- **Uso Adequado:** Escolha o tipo de função com base nos requisitos específicos da consulta e nos resultados desejados.
- **Desempenho:** Considere o impacto no desempenho ao usar funções, especialmente em grandes conjuntos de dados.
- **Documentação:** Consulte a documentação do SQL Server para detalhes adicionais sobre todas as funções disponíveis e suas sintaxes.

