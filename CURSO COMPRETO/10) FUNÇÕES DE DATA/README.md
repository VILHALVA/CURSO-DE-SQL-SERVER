# FUNÇÕES DE DATA
As funções de data são fundamentais para manipular e formatar datas em consultas SQL. Elas permitem realizar operações como extrair partes de uma data, calcular diferenças entre datas e formatar a apresentação das datas de maneira específica. Vamos explorar algumas das funções de data mais comuns no SQL Server:

## 1. Função CURRENT_TIMESTAMP
A função `CURRENT_TIMESTAMP` retorna a data e hora atuais do sistema no formato `datetime`.

**Exemplo:**
```sql
SELECT CURRENT_TIMESTAMP AS DataAtual;
```

**Resultado:**
```
DataAtual
-----------------------
2024-07-17 15:30:45.123
```

## 2. Função DATEPART
A função `DATEPART` extrai uma parte específica de uma data, como ano, mês, dia, hora, minuto, segundo, etc.

**Exemplos:**
```sql
SELECT DATEPART(YEAR, DataPedido) AS Ano,
       DATEPART(MONTH, DataPedido) AS Mes,
       DATEPART(DAY, DataPedido) AS Dia
FROM Pedidos;
```

**Resultado:**
```
Ano   | Mes | Dia
-----------------
2023  |  01 | 15
2023  |  02 | 20
```

## 3. Função DATEDIFF
A função `DATEDIFF` calcula a diferença entre duas datas em unidades específicas, como dias, meses, anos, etc.

**Exemplo:**
```sql
SELECT DATEDIFF(DAY, DataInicio, DataFim) AS DiasDeDuracao
FROM Projetos;
```

**Resultado:**
```
DiasDeDuracao
--------------
30
```

## 4. Funções de Formatação de Data
No SQL Server, você pode formatar a exibição das datas usando a função `CONVERT` ou `FORMAT`.

**Exemplo com `CONVERT`:**
```sql
SELECT CONVERT(varchar, DataPedido, 103) AS DataFormatada
FROM Pedidos;
```

**Resultado:**
```
DataFormatada
----------------
15/01/2023
20/02/2023
```

**Exemplo com `FORMAT`:**
```sql
SELECT FORMAT(DataPedido, 'dd/MM/yyyy') AS DataFormatada
FROM Pedidos;
```

**Resultado:**
```
DataFormatada
----------------
15/01/2023
20/02/2023
```

## 5. Função DATEADD
A função `DATEADD` adiciona ou subtrai uma quantidade específica de tempo de uma data.

**Exemplo:**
```sql
SELECT DATEADD(MONTH, 3, DataInicio) AS NovaData
FROM Contratos;
```

**Resultado:**
```
NovaData
----------------
2024-10-15
```

## Considerações Finais
- As funções de data no SQL Server permitem realizar operações complexas envolvendo datas, desde simples extrações de partes até cálculos de diferenças e formatação.
- Sempre verifique a documentação do SQL Server para detalhes específicos de sintaxe e comportamento das funções de data.
- Use essas funções com cuidado, especialmente ao manipular fusos horários e formatos de data para garantir precisão nos resultados.

