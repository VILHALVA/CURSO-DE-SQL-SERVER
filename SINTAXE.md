# SINTAXE
## TIPOS PRIMITIVOS:
O SQL Server suporta os tipos de dados básicos padrão em SQL, além de oferecer tipos específicos adicionais para atender a necessidades particulares de armazenamento e manipulação de dados. Abaixo estão alguns dos tipos de dados primitivos mais comuns no SQL Server:

* **1. INTEGER:** Representa números inteiros, que podem ser armazenados como inteiros de 1, 2, 4 ou 8 bytes, dependendo do valor.
* **2. DECIMAL(p, s):** Representa números decimais com uma precisão `p` e uma escala `s`, onde `p` é o número total de dígitos e `s` é o número de dígitos à direita do ponto decimal.
* **3. VARCHAR(n):** Armazena strings de caracteres de comprimento variável com um máximo de `n` caracteres.
* **4. DATE:** Armazena uma data sem horário.
* **5. TIME:** Armazena um horário sem data.
* **6. DATETIME:** Armazena uma data e horário.
* **7. BINARY:** Armazena dados binários de comprimento fixo.
* **8. IMAGE:** Armazena dados binários grandes, como imagens ou arquivos.

Esses tipos de dados primitivos são usados para definir os campos dentro das tabelas no SQL Server, permitindo flexibilidade na representação e armazenamento dos dados.

Aqui está um exemplo de como você pode criar uma tabela no SQL Server usando esses tipos de dados:

```sql
CREATE TABLE Usuarios (
    Id INTEGER PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INTEGER,
    Altura DECIMAL(5, 2),
    Ativo BIT DEFAULT 1,
    DataNascimento DATE,
    Endereco NVARCHAR(MAX),
    FotoPerfil IMAGE
);
```

Neste exemplo, criamos uma tabela chamada `Usuarios` com vários campos usando diferentes tipos de dados, incluindo INTEGER, VARCHAR, DECIMAL, BIT, DATE, NVARCHAR e IMAGE.

## COMANDOS MAIS USADOS:
### NO BANCO DE DADOS:
Aqui estão alguns dos principais comandos do SQL Server para criação, seleção e exclusão de bancos de dados:

* **1. CREATE DATABASE:** O comando `CREATE DATABASE` é usado para criar um novo banco de dados no SQL Server.
Exemplo:
```sql
CREATE DATABASE MeuBancoDeDados;
```

* **2. USE:** O comando `USE` é usado para selecionar um banco de dados específico para uso na sessão atual.
Exemplo:
```sql
USE MeuBancoDeDados;
```

* **3. DROP DATABASE:** O comando `DROP DATABASE` é usado para excluir um banco de dados do SQL Server.
Exemplo:
```sql
DROP DATABASE MeuBancoDeDados;
```

Esses são alguns dos comandos básicos do SQL Server relacionados à criação, seleção e exclusão de bancos de dados.

### NAS TABELAS:
Aqui estão alguns dos principais comandos do SQL Server para criação, alteração e exclusão de tabelas:

* **1. CREATE TABLE:** O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados SQL Server.
Exemplo:
```sql
CREATE TABLE Usuarios (
    Id INTEGER PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INTEGER
);
```

* **2. ALTER TABLE:** O comando `ALTER TABLE` é usado para adicionar, modificar ou excluir colunas de uma tabela existente.
Exemplo:
```sql
ALTER TABLE Usuarios ADD Altura DECIMAL(5, 2);
```

* **3. DROP TABLE:** O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados SQL Server.
Exemplo:
```sql
DROP TABLE Usuarios;
```

Esses são alguns dos principais comandos do SQL Server relacionados à criação, alteração e exclusão de tabelas.

## CATEGORIAS DE COMANDOS:
### DDL:
Os comandos DDL (Data Definition Language) são usados no SQL Server para definir e gerenciar a estrutura de objetos de banco de dados, como tabelas e índices. Abaixo estão alguns dos principais comandos DDL do SQL Server:

* **1. CREATE TABLE:** O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados SQL Server.
Exemplo:
```sql
CREATE TABLE Usuarios (
    Id INTEGER PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INTEGER
);
```

* **2. ALTER TABLE:** O comando `ALTER TABLE` é usado para adicionar, modificar ou excluir colunas de uma tabela existente.
Exemplo:
```sql
ALTER TABLE Usuarios ADD Altura DECIMAL(5, 2);
```

* **3. DROP TABLE:** O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados SQL Server.
Exemplo:
```sql
DROP TABLE Usuarios;
```

* **4. CREATE INDEX:** O comando `CREATE INDEX` é usado para criar um índice em uma ou mais colunas de uma tabela para otimizar consultas.
Exemplo:
```sql
CREATE INDEX idx_Nome ON Usuarios (Nome);
```

* **5. DROP INDEX:** O comando `DROP INDEX` é usado para excluir um índice existente de uma tabela.
Exemplo:
```sql
DROP INDEX idx_Nome;
```

### DML:
Os comandos DML (Data Manipulation Language) são usados no SQL Server para manipular dados dentro de tabelas existentes. Eles são usados para inserir, atualizar, excluir e consultar dados. Abaixo estão alguns dos principais comandos DML do SQL Server:

* **1. INSERT INTO:** O comando `INSERT INTO` é usado para inserir um novo registro em uma tabela.
Exemplo:
```sql
INSERT INTO Usuarios (Nome, Idade) VALUES ('João', 25);
```

* **2. UPDATE:** O comando `UPDATE` é usado para atualizar os valores de um ou mais registros em uma tabela.
Exemplo:
```sql
UPDATE Usuarios SET Idade = 26 WHERE Nome = 'João';
```

* **3. DELETE:** O comando `DELETE` é usado para excluir registros de uma tabela.
Exemplo:
```sql
DELETE FROM Usuarios WHERE Nome = 'João';
```

* **4. SELECT:** O comando `SELECT` é usado para recuperar dados de uma ou mais tabelas.
Exemplo:
```sql
SELECT * FROM Usuarios WHERE Idade > 18;
```

### DCL:
Os comandos DCL (Data Control Language) no SQL Server são usados para gerenciar as permissões de acesso e segurança dos objetos do banco de dados. Abaixo estão alguns exemplos:

* **1. GRANT:** O comando `GRANT` é usado para conceder permissões de acesso a usuários e funções no SQL Server.
Exemplo:
```sql
GRANT SELECT, INSERT ON Usuarios TO MeuUsuario;
```

* **2. REVOKE:** O comando `REVOKE` é usado para revogar permissões previamente concedidas a usuários e funções.
Exemplo:
```sql
REVOKE INSERT ON Usuarios FROM MeuUsuario;
```

### TCL:
Os comandos TCL (Transaction Control Language) no SQL Server são usados para controlar transações no banco de dados. Abaixo estão alguns exemplos:

* **1. BEGIN TRANSACTION:** O comando `BEGIN TRANSACTION` é usado para iniciar uma nova transação no SQL Server.
Exemplo:
```sql
BEGIN TRANSACTION;
```

* **2. COMMIT:** O comando `COMMIT` é usado para confirmar as mudanças feitas durante uma transação.
Exemplo:
```sql
COMMIT;
```

* **3. ROLLBACK:** O comando `ROLLBACK` é usado para reverter as mudanças feitas durante uma transação não confirmada.
Exemplo:
```sql
ROLLBACK;
```

## COMANDOS DE SQL SERVER VERSUS [MYSQL](https://github.com/VILHALVA/CURSO-DE-MYSQL)
### TABELA:
Aqui está a tabela comparativa entre os comandos do MySQL e SQL Server:

| **Comando**                   | **MySQL**                                              | **SQL Server**                                         |
|-------------------------------|--------------------------------------------------------|--------------------------------------------------------|
| **Criar Banco de Dados**      | `CREATE DATABASE MeuBancoDeDados;`                      | `CREATE DATABASE MeuBancoDeDados;`                      |
| **Selecionar Banco de Dados** | `USE MeuBancoDeDados;`                                  | `USE MeuBancoDeDados;`                                  |
| **Criar Tabela**              | ```sql                                                  | ```sql                                                  |
|                               | CREATE TABLE Usuarios (                                 | CREATE TABLE Usuarios (                                 |
|                               |     Id INT PRIMARY KEY,                                 |     Id INTEGER PRIMARY KEY,                             |
|                               |     Nome VARCHAR(100) NOT NULL,                         |     Nome VARCHAR(100) NOT NULL,                         |
|                               |     Idade INT                                           |     Idade INTEGER                                       |
|                               | );                                                     | );                                                     |
| **Inserir Dados**             | `INSERT INTO Usuarios (Nome, Idade) VALUES ('João', 25);` | `INSERT INTO Usuarios (Nome, Idade) VALUES ('João', 25);` |
| **Consultar Dados**           | `SELECT * FROM Usuarios WHERE Idade > 18;`               | `SELECT * FROM Usuarios WHERE Idade > 18;`               |
| **Excluir Dados**             | `DELETE FROM Usuarios WHERE Nome = 'João';`              | `DELETE FROM Usuarios WHERE Nome = 'João';`              |
| **Excluir Tabela**            | `DROP TABLE Usuarios;`                                  | `DROP TABLE Usuarios;`                                  |

Esta tabela compara os comandos básicos mais utilizados no MySQL e no SQL Server para criação de banco de dados, tabelas, inserção, consulta e exclusão de dados.

### UÉ, MYSQL E SQL SERVER TEM A MESMA SINTAXE?
Não exatamente. Embora muitos comandos básicos possam ser semelhantes entre MySQL e SQL Server, existem diferenças significativas na sintaxe e nas funcionalidades oferecidas por cada um. Aqui estão alguns pontos de diferença comuns:

1. **Tipos de Dados:** Embora os tipos básicos de dados sejam semelhantes (como `INT`, `VARCHAR`, etc.), existem diferenças nos detalhes de implementação e nas opções de configuração.

2. **Sintaxe de Comandos:** Alguns comandos podem ter sintaxes ligeiramente diferentes ou oferecer funcionalidades adicionais em um sistema em comparação com o outro. Por exemplo, o SQL Server pode ter funções específicas que não estão disponíveis no MySQL e vice-versa.

3. **Funções e Procedimentos Armazenados:** As funções e procedimentos armazenados podem ser implementados de maneiras diferentes em cada sistema, usando linguagens de programação diferentes (por exemplo, T-SQL no SQL Server e SQL padrão no MySQL).

4. **Administração e Configuração:** As práticas e ferramentas para administração, configuração e otimização de desempenho podem variar entre MySQL e SQL Server.

5. **Recursos Avançados:** Cada sistema pode oferecer recursos avançados específicos que não estão presentes no outro, como particionamento de tabelas, índices espaciais, ou suporte a diferentes tipos de replicação e alta disponibilidade.

Embora muitos conceitos sejam transferíveis entre os dois sistemas, é importante estar ciente das diferenças específicas ao migrar ou desenvolver aplicativos para cada um deles.

### CONCLUSÃO:
O SQL Server oferece uma ampla gama de funcionalidades e comandos para criar, modificar e manipular dados em ambientes corporativos e de larga escala. Desde a definição de tipos de dados primitivos até a execução de comandos DML e DDL avançados, o SQL Server suporta eficientemente as necessidades de gerenciamento de dados em organizações de diversos portes.