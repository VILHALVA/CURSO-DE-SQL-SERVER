# FILTRANDO REGISTROS COM AS CLÁUSULAS WHERE, AND, OR, IN E LIKE
Vamos explorar como usar as cláusulas `WHERE`, `AND`, `OR`, `IN` e `LIKE` para filtrar registros de maneira eficaz em consultas SQL no SQL Server. Cada uma dessas cláusulas oferece funcionalidades específicas para refinar os resultados das consultas de acordo com critérios variados. Vamos detalhar cada uma com exemplos práticos:

## 1. Cláusula WHERE
A cláusula `WHERE` é usada para aplicar condições aos registros que serão selecionados em uma consulta.

**Exemplo básico:**
```sql
SELECT *
FROM Clientes
WHERE Nome = 'João';
```

**Explicação:** Este comando seleciona todos os campos da tabela `Clientes` onde o valor da coluna `Nome` é igual a 'João'.

## 2. Cláusula AND
A cláusula `AND` é usada para combinar múltiplas condições na cláusula `WHERE`. Todos os critérios devem ser verdadeiros para que o registro seja incluído no resultado.

**Exemplo com `AND`:**
```sql
SELECT *
FROM Clientes
WHERE Nome = 'João' AND Email = 'joao@example.com';
```

**Explicação:** Aqui, estamos selecionando registros da tabela `Clientes` onde o `Nome` é 'João' e o `Email` é 'joao@example.com'.

## 3. Cláusula OR
A cláusula `OR` é usada para combinar condições na cláusula `WHERE`, onde pelo menos uma das condições deve ser verdadeira para que o registro seja incluído no resultado.

**Exemplo com `OR`:**
```sql
SELECT *
FROM Clientes
WHERE Nome = 'João' OR Nome = 'Maria';
```

**Explicação:** Este comando seleciona registros da tabela `Clientes` onde o `Nome` é 'João' ou 'Maria'.

## 4. Cláusula IN
A cláusula `IN` é usada para especificar vários valores possíveis para uma coluna. Ela é útil quando você quer comparar uma coluna com vários valores possíveis.

**Exemplo com `IN`:**
```sql
SELECT *
FROM Clientes
WHERE Nome IN ('João', 'Maria', 'Ana');
```

**Explicação:** Aqui, estamos selecionando registros da tabela `Clientes` onde o `Nome` é 'João', 'Maria' ou 'Ana'.

## 5. Cláusula LIKE
A cláusula `LIKE` é usada para realizar comparações de padrões em dados de texto. Ela permite usar curingas para fazer correspondência parcial em valores de texto.

**Exemplo com `LIKE`:**
```sql
SELECT *
FROM Clientes
WHERE Nome LIKE 'J%';
```

**Explicação:** Este comando seleciona registros da tabela `Clientes` onde o `Nome` começa com a letra 'J'. O `%` é um curinga que corresponde a qualquer número de caracteres.

## Exemplos Combinados
Você pode combinar várias cláusulas `WHERE`, `AND`, `OR`, `IN` e `LIKE` para criar condições mais complexas conforme necessário:

**Exemplo combinado:**
```sql
SELECT *
FROM Clientes
WHERE (Nome = 'João' OR Nome = 'Maria')
  AND Email LIKE '%@example.com';
```

**Explicação:** Este comando seleciona registros da tabela `Clientes` onde o `Nome` é 'João' ou 'Maria' e o `Email` contém '@example.com'.

## Considerações Finais
- As cláusulas `WHERE`, `AND`, `OR`, `IN` e `LIKE` são poderosas ferramentas para filtrar dados em consultas SQL.
- Entender como usar essas cláusulas corretamente ajuda a construir consultas SQL mais eficazes e específicas para suas necessidades.
- Sempre verifique os tipos de dados e as correspondências ao usar `LIKE` para garantir resultados precisos.

