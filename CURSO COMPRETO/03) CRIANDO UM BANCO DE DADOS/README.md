# CRIANDO UM BANCO DE DADOS
## Conceito de Criar um Banco de Dados
No SQL Server, criar um banco de dados envolve definir uma estrutura organizada para armazenar dados de maneira eficiente. Cada banco de dados pode conter várias tabelas, views, procedimentos armazenados, funções e outros objetos que ajudam a organizar e manipular informações de forma lógica e segura.

## Exemplos de Comandos e Explicações
### 1. Comando CREATE DATABASE
O comando `CREATE DATABASE` é usado para criar um novo banco de dados no SQL Server.

**Exemplo:**
```sql
CREATE DATABASE MinhaBaseDeDados;
```

**Explicação:** Este comando cria um novo banco de dados chamado `MinhaBaseDeDados`. Após executar esse comando no SQL Server Management Studio (SSMS) ou em uma consulta SQL, o banco de dados é criado e está pronto para ser usado.

### 2. Comando USE
O comando `USE` é usado para selecionar o banco de dados atual no qual você deseja trabalhar.

**Exemplo:**
```sql
USE MinhaBaseDeDados;
```

**Explicação:** Este comando seleciona o banco de dados `MinhaBaseDeDados` como o banco de dados atual. Todas as consultas subsequentes serão executadas neste banco de dados, a menos que explicitamente alterado com um novo comando `USE`.

### 3. Parâmetros do CREATE DATABASE
O comando `CREATE DATABASE` suporta vários parâmetros para configurar o banco de dados durante a criação.

**Exemplo com Parâmetros:**
```sql
CREATE DATABASE MinhaBaseDeDados
ON PRIMARY
(
    NAME = 'MinhaBaseDeDados_data',
    FILENAME = 'C:\Caminho\Para\MinhaBaseDeDados.mdf',
    SIZE = 100MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'MinhaBaseDeDados_log',
    FILENAME = 'C:\Caminho\Para\MinhaBaseDeDados_log.ldf',
    SIZE = 50MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
);
```

**Explicação:** Neste exemplo, além de criar o banco de dados `MinhaBaseDeDados`, especificamos os detalhes de armazenamento:
- `ON PRIMARY`: Define o grupo de arquivos primário para armazenar os dados principais.
- `NAME` e `FILENAME`: Nome lógico e local físico do arquivo de dados (.mdf) e do arquivo de log (.ldf).
- `SIZE`: Tamanho inicial do arquivo de dados e do arquivo de log.
- `MAXSIZE`: Tamanho máximo permitido para o arquivo de log.
- `FILEGROWTH`: Tamanho incremental do crescimento automático dos arquivos.



