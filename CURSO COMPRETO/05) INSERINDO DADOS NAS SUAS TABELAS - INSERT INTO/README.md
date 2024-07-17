# INSERINDO DADOS NAS SUAS TABELAS - INSERT INTO
Inserir dados em tabelas é uma operação fundamental no SQL Server para adicionar registros às suas estruturas de banco de dados. Vamos explorar como usar o comando `INSERT INTO` para inserir dados em tabelas existentes, junto com exemplos e explicações detalhadas.

## Sintaxe Básica do Comando INSERT INTO
A sintaxe básica do comando `INSERT INTO` é a seguinte:

```sql
INSERT INTO NomeDaTabela (Lista de Colunas)
VALUES (Valores);
```

- **NomeDaTabela**: O nome da tabela na qual você deseja inserir os dados.
- **Lista de Colunas**: Opcional. Se especificado, indica quais colunas você está inserindo dados. Se não for especificado, é esperado que você forneça valores para todas as colunas da tabela na ordem em que foram definidas.
- **Valores**: Os valores a serem inseridos nas colunas correspondentes.

## Exemplos de Comandos
### 1. Inserindo Dados em Todas as Colunas
Se você está inserindo dados em todas as colunas da tabela na ordem em que foram definidas:

```sql
-- Exemplo 1: Inserindo dados em todas as colunas
INSERT INTO Clientes (ClienteId, Nome, Email, Telefone)
VALUES (1, 'João', 'joao@example.com', '(11) 1234-5678');
```

**Explicações:**
- `INSERT INTO Clientes`: Especifica que os dados serão inseridos na tabela `Clientes`.
- `(ClienteId, Nome, Email, Telefone)`: Lista as colunas nas quais os dados serão inseridos. Aqui, estamos inserindo valores para todas as colunas da tabela `Clientes`.
- `VALUES (1, 'João', 'joao@example.com', '(11) 1234-5678')`: Define os valores a serem inseridos nas colunas correspondentes. O `ClienteId` é 1, o `Nome` é 'João', o `Email` é 'joao@example.com' e o `Telefone` é '(11) 1234-5678'.

### 2. Inserindo Dados em Colunas Específicas
Às vezes, você pode querer inserir dados em colunas específicas, especialmente se a tabela tiver colunas com valores padrão ou autoincremento:

```sql
-- Exemplo 2: Inserindo dados em colunas específicas
INSERT INTO Clientes (Nome, Email)
VALUES ('Maria', 'maria@example.com');
```

**Explicações:**
- Aqui, estamos inserindo apenas os valores para as colunas `Nome` e `Email`. Se `ClienteId` fosse uma coluna autoincrementada ou com valor padrão, o SQL Server geraria automaticamente o valor para essa coluna.

### 3. Inserindo Múltiplas Linhas de Dados
É possível inserir múltiplas linhas de uma vez com um único comando `INSERT INTO`:

```sql
-- Exemplo 3: Inserindo múltiplas linhas de dados
INSERT INTO Clientes (ClienteId, Nome, Email, Telefone)
VALUES (2, 'Ana', 'ana@example.com', '(11) 9876-5432'),
       (3, 'Pedro', 'pedro@example.com', '(11) 5555-5555');
```

**Explicações:**
- Aqui, estamos inserindo dois registros de uma vez na tabela `Clientes`. Cada conjunto de valores entre parênteses corresponde a um registro diferente.

## Considerações Finais
- Ao inserir dados em uma tabela, é importante garantir que os tipos de dados dos valores correspondam aos tipos definidos nas colunas.
- A ordem dos valores no comando `INSERT INTO` deve corresponder à ordem das colunas listadas, se especificadas.

