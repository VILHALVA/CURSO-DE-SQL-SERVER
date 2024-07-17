# JOINS
As junções (joins) no SQL Server são utilizadas para combinar dados de duas ou mais tabelas com base em uma condição relacionada entre elas. Isso permite que você recupere dados de várias tabelas em uma única consulta, conforme necessário para análises complexas e relatórios. Vamos explorar os principais tipos de junções no SQL Server:

## Tipos de Junções
### 1. INNER JOIN
A junção `INNER JOIN` retorna apenas os registros que possuem correspondência nas duas tabelas. Ou seja, somente os registros que atendem à condição de junção são incluídos no resultado.

**Exemplo de `INNER JOIN`:**
Suponha que temos duas tabelas, `Orders` e `Customers`, e queremos listar os pedidos juntamente com os detalhes do cliente para pedidos que têm um cliente correspondente.

```sql
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;
```

**Explicação:**
- Este comando combina os dados das tabelas `Orders` e `Customers` usando `INNER JOIN` na coluna `CustomerID`, retornando `OrderID`, `OrderDate` da tabela `Orders` e `CustomerName` da tabela `Customers` para os pedidos que possuem um cliente correspondente.

### 2. LEFT JOIN (OUTER JOIN)
A junção `LEFT JOIN` retorna todos os registros da tabela à esquerda da junção (primeira tabela mencionada), juntamente com os registros correspondentes da tabela à direita (segunda tabela mencionada). Se não houver correspondência, os valores da tabela à direita serão `NULL`.

**Exemplo de `LEFT JOIN`:**
Suponha que queremos listar todos os produtos juntamente com as categorias dos produtos, incluindo produtos sem categoria atribuída.

```sql
SELECT p.ProductName, c.CategoryName
FROM Products p
LEFT JOIN Categories c ON p.CategoryID = c.CategoryID;
```

**Explicação:**
- Este comando combina os dados das tabelas `Products` e `Categories` usando `LEFT JOIN` na coluna `CategoryID`, retornando `ProductName` da tabela `Products` e `CategoryName` da tabela `Categories`. Todos os produtos são listados, mesmo que não tenham uma categoria correspondente.

### 3. RIGHT JOIN (OUTER JOIN)
A junção `RIGHT JOIN` retorna todos os registros da tabela à direita da junção (segunda tabela mencionada), juntamente com os registros correspondentes da tabela à esquerda (primeira tabela mencionada). Se não houver correspondência, os valores da tabela à esquerda serão `NULL`.

**Exemplo de `RIGHT JOIN`:**
Suponha que queremos listar todos os funcionários juntamente com os departamentos dos quais eles são membros, incluindo departamentos sem funcionários atribuídos.

```sql
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;
```

**Explicação:**
- Este comando combina os dados das tabelas `Employees` e `Departments` usando `RIGHT JOIN` na coluna `DepartmentID`, retornando `EmployeeName` da tabela `Employees` e `DepartmentName` da tabela `Departments`. Todos os departamentos são listados, mesmo que não tenham funcionários correspondentes.

### 4. FULL JOIN (OUTER JOIN)
A junção `FULL JOIN` retorna todos os registros quando há uma correspondência em uma das tabelas. Se não houver correspondência, os valores da tabela sem correspondência serão `NULL`.

**Exemplo de `FULL JOIN`:**
Suponha que queremos listar todos os clientes juntamente com os pedidos que eles fizeram, incluindo clientes sem pedidos e pedidos sem clientes.

```sql
SELECT c.CustomerName, o.OrderID
FROM Customers c
FULL JOIN Orders o ON c.CustomerID = o.CustomerID;
```

**Explicação:**
- Este comando combina os dados das tabelas `Customers` e `Orders` usando `FULL JOIN` na coluna `CustomerID`, retornando `CustomerName` da tabela `Customers` e `OrderID` da tabela `Orders`. Todos os clientes e todos os pedidos são listados, mesmo que não tenham correspondência.

## Considerações Finais
- **Condições de Junção:** As junções são especificadas usando a cláusula `ON`, onde você define a condição de correspondência entre as tabelas.
- **Uso de Alias:** É comum usar alias (`o`, `c`, `p`, etc.) para simplificar as referências de coluna nas consultas SQL.
- **Escolha do Tipo de Junção:** Escolha o tipo de junção com base nos requisitos específicos da sua consulta para garantir que os resultados sejam adequados às suas necessidades.

