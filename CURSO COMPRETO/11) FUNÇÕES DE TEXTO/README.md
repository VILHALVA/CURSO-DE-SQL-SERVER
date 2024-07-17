# FUNÇÕES DE TEXTO
As funções de texto são cruciais para manipular e formatar dados de texto em consultas SQL. Elas permitem realizar operações como concatenação de strings, conversão de maiúsculas/minúsculas, busca por padrões e muito mais. Vamos explorar algumas das funções de texto mais comuns no SQL Server:

## 1. Função CONCAT
A função `CONCAT` é usada para concatenar duas ou mais strings em uma única string.

**Exemplo:**
```sql
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;
```

**Resultado:**
```
FullName
---------------
John Doe
Jane Smith
```

## 2. Funções UPPER e LOWER
As funções `UPPER` e `LOWER` são usadas para converter strings em maiúsculas ou minúsculas, respectivamente.

**Exemplo com `UPPER`:**
```sql
SELECT UPPER(FirstName) AS FirstNameUpper
FROM Employees;
```

**Resultado:**
```
FirstNameUpper
---------------
JOHN
JANE
```

**Exemplo com `LOWER`:**
```sql
SELECT LOWER(LastName) AS LastNameLower
FROM Employees;
```

**Resultado:**
```
LastNameLower
---------------
doe
smith
```

## 3. Função SUBSTRING
A função `SUBSTRING` extrai uma parte específica de uma string com base em sua posição e comprimento.

**Exemplo:**
```sql
SELECT SUBSTRING(PhoneNumber, 1, 3) AS AreaCode
FROM Customers;
```

**Resultado:**
```
AreaCode
---------------
123
456
```

## 4. Função LEN
A função `LEN` retorna o comprimento de uma string (número de caracteres).

**Exemplo:**
```sql
SELECT LEN(Address) AS AddressLength
FROM Customers;
```

**Resultado:**
```
AddressLength
---------------
15
18
```

## 5. Função REPLACE
A função `REPLACE` substitui todas as ocorrências de uma substring por outra em uma string.

**Exemplo:**
```sql
SELECT REPLACE(Notes, 'important', 'urgent') AS UpdatedNotes
FROM Orders;
```

**Resultado:**
```
UpdatedNotes
---------------------------------
Please review this order, it's urgent.
Reminder: complete the important tasks.
```

## Considerações Finais
- As funções de texto no SQL Server são poderosas para manipular e formatar strings de várias maneiras.
- Elas podem ser usadas em combinação com outras funções e cláusulas SQL para realizar transformações complexas nos dados.
- Sempre verifique a documentação do SQL Server para detalhes específicos de sintaxe e comportamento das funções de texto.

