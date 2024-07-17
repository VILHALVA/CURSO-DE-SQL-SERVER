# UPDATE
O comando `UPDATE` no SQL Server é utilizado para modificar os dados existentes em uma ou mais linhas de uma tabela. Ele permite alterar os valores de uma ou mais colunas em registros específicos que correspondem a uma condição especificada.

## Sintaxe Básica do `UPDATE`
A sintaxe básica do comando `UPDATE` é a seguinte:

```sql
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

- `nome_da_tabela`: O nome da tabela na qual você deseja atualizar os dados.
- `coluna1, coluna2, ...`: As colunas que você deseja atualizar.
- `valor1, valor2, ...`: Os novos valores que você deseja atribuir às colunas especificadas.
- `WHERE condição`: A condição que determina quais registros serão atualizados. Se omitido, todos os registros da tabela serão atualizados.

## Exemplo de `UPDATE`
**Exemplo simples:**
Suponha que temos uma tabela `Employees` com as colunas `EmployeeID`, `FirstName`, `LastName`, `Salary`, e queremos aumentar o salário de todos os funcionários que ganham menos de 5000.

```sql
UPDATE Employees
SET Salary = Salary * 1.1 -- Aumento de 10%
WHERE Salary < 5000;
```

**Explicação:**
- Este comando atualiza a tabela `Employees`, aumentando o `Salary` em 10% para todos os funcionários cujo salário é inferior a 5000.

## Uso de `UPDATE` com `JOIN`
Você também pode usar o `UPDATE` com uma cláusula `JOIN` para atualizar valores em uma tabela com base em dados de outra tabela.

**Exemplo com `JOIN`:**
Suponha que temos uma tabela `Sales` com as colunas `SaleID`, `ProductID`, `Quantity`, e queremos atualizar o estoque de produtos na tabela `Products` após uma venda.

```sql
UPDATE Products
SET StockCount = StockCount - s.Quantity
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.SaleID = 123;
```

**Explicação:**
- Este comando subtrai a quantidade vendida (`Quantity`) da tabela `Sales` do `StockCount` da tabela `Products` para o `ProductID` correspondente, onde `SaleID` é 123.

## Considerações Finais
- **Condição `WHERE`:** A cláusula `WHERE` é opcional, mas é recomendada para garantir que apenas os registros desejados sejam atualizados.
- **Transacionalidade:** O `UPDATE` é uma operação transacional, ou seja, pode ser desfeita (`ROLLBACK`) se necessário.
- **Impacto e Performance:** Considere o impacto do `UPDATE` em grandes conjuntos de dados, especialmente quando usado sem uma cláusula `WHERE` adequada.

