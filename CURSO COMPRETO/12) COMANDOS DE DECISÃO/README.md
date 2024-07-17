# COMANDOS DE DECISÃO
No SQL Server, os comandos de decisão não são usados da mesma forma que em linguagens de programação procedural, como o SQL é uma linguagem declarativa. No entanto, há estruturas que podem ser consideradas equivalentes para filtrar e manipular dados com base em condições lógicas. Vamos explorar algumas das principais formas de realizar decisões em consultas SQL no SQL Server:

## 1. Cláusula WHERE
A cláusula `WHERE` é fundamental para aplicar condições lógicas em consultas SQL, permitindo filtrar registros com base em critérios específicos.

**Exemplo:**
```sql
SELECT *
FROM Products
WHERE Price > 50;
```

**Explicação:** Este comando seleciona todos os produtos da tabela `Products` onde o preço é maior que 50.

## 2. Cláusula CASE
A cláusula `CASE` é utilizada para realizar avaliações condicionais dentro de uma consulta SQL, permitindo retornar diferentes valores com base em condições especificadas.

**Exemplo simples de `CASE`:**
```sql
SELECT ProductName,
       Price,
       CASE
           WHEN Price > 100 THEN 'Expensive'
           ELSE 'Affordable'
       END AS PriceCategory
FROM Products;
```

**Resultado:**
```
ProductName     | Price  | PriceCategory
-----------------------------------------
Product A       | 120    | Expensive
Product B       | 80     | Affordable
Product C       | 150    | Expensive
```

**Explicação:** Neste exemplo, a coluna `PriceCategory` é calculada com base no valor da coluna `Price`. Se `Price` for maior que 100, o valor será 'Expensive'; caso contrário, será 'Affordable'.

## 3. Operadores Lógicos (AND, OR)
Os operadores lógicos `AND` e `OR` são usados para combinar múltiplas condições na cláusula `WHERE` para criar condições mais complexas.

**Exemplo com `AND` e `OR`:**
```sql
SELECT *
FROM Products
WHERE Category = 'Electronics'
  AND (Price > 500 OR StockCount > 10);
```

**Explicação:** Este comando seleciona produtos da categoria 'Electronics' com preço superior a 500 ou contagem de estoque superior a 10.

## Considerações Finais
- No SQL Server, as decisões são predominantemente feitas usando a cláusula `WHERE` para filtrar registros com base em condições lógicas.
- A cláusula `CASE` pode ser usada para retornar diferentes valores com base em condições específicas dentro de uma consulta.
- Os operadores lógicos `AND` e `OR` são úteis para combinar condições múltiplas e criar lógicas mais complexas em suas consultas.

