# MANUAL
## 1. INSTALAÇÃO DO SQL SERVER:
1. **Baixe o SQL Server:** Acesse o site [oficial da Microsoft](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads) ou o portal de desenvolvedores para baixar a versão mais recente do SQL Server que deseja instalar (por exemplo, SQL Server 2019).

2. **Execute o Instalador:**
   - Abra o arquivo de instalação baixado (.exe).
   - Siga as instruções do instalador para configurar as opções de instalação. Selecione os recursos que deseja instalar (geralmente, incluindo o SQL Server Database Engine).

3. **Configuração da Instância:**
   - Durante a instalação, você será solicitado a configurar uma instância. Escolha entre instância padrão (padrão) ou instância nomeada.
   - Defina a autenticação (geralmente, autenticação mista para combinar autenticação do Windows e senha SQL).

4. **Conclua a Instalação:** Aguarde o término da instalação e verifique se o SQL Server foi instalado corretamente.

## 2. CONFIGURAÇÃO INICIAL:
1. **Conectando ao SQL Server Management Studio (SSMS):**
   - Abra o SQL Server Management Studio.
   - Conecte-se ao servidor utilizando as credenciais configuradas durante a instalação.

2. **Criando um Novo Banco de Dados:**
   - No SSMS, clique com o botão direito em "Databases" na árvore do objeto.
   - Escolha "New Database".
   - Defina um nome para o banco de dados e configure as opções desejadas (como o tamanho inicial do arquivo e o crescimento automático).

## 3. CRIANDO UMA TABELA:
1. **Criando uma Nova Tabela:**
   - No SSMS, expanda o banco de dados criado.
   - Clique com o botão direito em "Tables" e selecione "New Table".
   - Defina as colunas da tabela, especificando o nome, tipo de dado e quaisquer restrições necessárias (como chave primária).

2. **Script Exemplo:**
   ```sql
   CREATE TABLE Exemplo (
       ID INT PRIMARY KEY,
       Nome NVARCHAR(100),
       Idade INT
   );
   ```

3. **Execute o Script:** Após definir as colunas, execute o script para criar a tabela no banco de dados.

## 4. EXPORTAÇÃO E IMPORTAÇÃO DE DADOS:
1. **Exportando Dados:**
   - Para exportar dados de uma tabela, clique com o botão direito na tabela no SSMS.
   - Escolha "Script Table as" -> "INSERT To" -> "New Query Editor Window".
   - Isso gerará um script SQL que insere todos os dados da tabela em uma nova janela de consulta.

2. **Importando Dados:**
   - Para importar dados para uma tabela existente:
     - Abra um arquivo CSV ou Excel contendo os dados que deseja importar.
     - Use o SQL Server Import and Export Wizard ou escreva um script SQL utilizando o comando `BULK INSERT` ou `INSERT INTO`.

   Exemplo de script para importar dados de um arquivo CSV:
   ```sql
   BULK INSERT Exemplo
   FROM 'C:\Caminho\Para\Arquivo.csv'
   WITH (
       FIELDTERMINATOR = ',',
       ROWTERMINATOR = '\n',
       FIRSTROW = 2 -- Se houver cabeçalho
   );
   ```

