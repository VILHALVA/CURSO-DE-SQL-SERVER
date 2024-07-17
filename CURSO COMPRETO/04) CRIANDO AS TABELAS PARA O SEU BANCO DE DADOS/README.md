# CRIANDO AS TABELAS PARA O SEU BANCO DE DADOS
## Conceito de Criar Tabelas
Em um banco de dados relacional como o SQL Server, as tabelas são estruturas fundamentais que organizam e armazenam os dados de forma estruturada. Cada tabela é composta por colunas que representam os diferentes atributos dos dados e linhas que representam os registros individuais.

## Exemplos de Comandos
### 1. Criando uma Tabela Simples
Para criar uma tabela, usamos o comando `CREATE TABLE`. Vamos criar uma tabela simples de clientes como exemplo:

```sql
CREATE TABLE Clientes (
    ClienteId INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100),
    Telefone NVARCHAR(20)
);
```

**Explicações:**
- `CREATE TABLE Clientes`: Define o comando para criar uma tabela chamada `Clientes`.
- `(ClienteId INT PRIMARY KEY)`: Define a coluna `ClienteId` como chave primária da tabela. Uma chave primária é uma coluna ou conjunto de colunas que identifica exclusivamente cada linha na tabela.
- `Nome NVARCHAR(100), Email NVARCHAR(100), Telefone NVARCHAR(20)`: Define as colunas `Nome`, `Email` e `Telefone` com seus tipos de dados (`NVARCHAR` para texto Unicode variável) e tamanhos máximos.

### 2. Adicionando Restrições e Chaves Estrangeiras
Podemos adicionar restrições, como chaves estrangeiras, para garantir integridade referencial entre tabelas. Vamos adicionar uma tabela de pedidos que referencia a tabela de clientes:

```sql
CREATE TABLE Pedidos (
    PedidoId INT PRIMARY KEY,
    ClienteId INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteId) REFERENCES Clientes(ClienteId)
);
```

**Explicações:**
- `FOREIGN KEY (ClienteId) REFERENCES Clientes(ClienteId)`: Define a coluna `ClienteId` na tabela `Pedidos` como uma chave estrangeira que referencia a coluna `ClienteId` na tabela `Clientes`. Isso garante que cada `ClienteId` em `Pedidos` deve existir na tabela `Clientes`.

### 3. Configurando Restrições e Índices
Além das chaves primárias e estrangeiras, podemos configurar outras restrições e índices para melhorar o desempenho e garantir a integridade dos dados. Vamos adicionar um índice na coluna `Email` da tabela `Clientes`:

```sql
CREATE INDEX idx_Email_Clientes ON Clientes(Email);
```

**Explicações:**
- `CREATE INDEX idx_Email_Clientes ON Clientes(Email)`: Cria um índice na coluna `Email` da tabela `Clientes`, o que pode acelerar consultas que filtram ou ordenam por essa coluna.

### 4. Adicionando Comentários nas Colunas
No SQL Server, é possível adicionar comentários descritivos às colunas para documentação:

```sql
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador único do cliente', 
    @level0type=N'SCHEMA',@level0name=N'dbo', 
    @level1type=N'TABLE',@level1name=N'Clientes', 
    @level2type=N'COLUMN',@level2name=N'ClienteId';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço de e-mail do cliente', 
    @level0type=N'SCHEMA',@level0name=N'dbo', 
    @level1type=N'TABLE',@level1name=N'Clientes', 
    @level2type=N'COLUMN',@level2name=N'Email';
```

**Explicações:**
- `EXEC sys.sp_addextendedproperty`: Adiciona um comentário descritivo para a coluna especificada. Isso ajuda na documentação do esquema do banco de dados, facilitando o entendimento das estruturas e propósitos das colunas.

