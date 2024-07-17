# INSTALAÇÃO E CONFIGURAÇÃO DO SQL SERVER E O MANAGEMENT STUDIO
## INSTALAÇÃO DO SQL SERVER:
1. **Baixe o Instalador:**
   - Acesse o site [oficial da Microsoft](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads) ou o portal de desenvolvedores para baixar o instalador do SQL Server. Você pode optar pelo SQL Server Developer Edition, que é gratuito para desenvolvimento e testes.

2. **Execute o Instalador:**
   - Execute o arquivo de instalação baixado (.exe). O instalador do SQL Server começará a preparar a instalação.

3. **Selecione uma Edição:**
   - Na tela de seleção de edição, escolha a edição do SQL Server que deseja instalar. Para fins de desenvolvimento, a "Developer Edition" é recomendada.

4. **Aceite os Termos de Licença:**
   - Leia e aceite os termos de licença para continuar.

5. **Selecione os Recursos:**
   - Selecione os recursos que deseja instalar. Para a maioria dos casos de desenvolvimento, selecione o "Database Engine Services" e o "SQL Server Management Tools" (que inclui o SQL Server Management Studio - SSMS).

6. **Configuração da Instância:**
   - Escolha entre instância padrão ou instância nomeada. A instância padrão geralmente é suficiente para a maioria dos cenários de desenvolvimento.

7. **Configuração de Autenticação:**
   - Escolha o modo de autenticação. Recomenda-se usar a autenticação mista para poder utilizar tanto logins do Windows quanto logins do SQL Server.

8. **Configurações Adicionais:**
   - Configure as opções adicionais conforme necessário, como diretórios de instalação e configurações de inicialização.

9. **Conclua a Instalação:**
   - Após configurar todas as opções, o instalador iniciará a instalação do SQL Server. Aguarde até que o processo seja concluído.

## INSTALAÇÃO DO SQL SERVER MANAGEMENT STUDIO (SSMS):
1. **Baixe o Instalador do SSMS:**
   - O SSMS pode ser baixado separadamente do SQL Server. Acesse o [site da Microsoft](https://learn.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) e procure por "SQL Server Management Studio".

2. **Execute o Instalador do SSMS:**
   - Execute o arquivo de instalação baixado (.exe) para iniciar o instalador do SSMS.

3. **Selecione os Componentes:**
   - Na tela de seleção de componentes, deixe selecionado o SSMS e quaisquer componentes adicionais que deseje instalar.

4. **Aceite os Termos de Licença:**
   - Leia e aceite os termos de licença para continuar.

5. **Configurações Adicionais (Opcional):**
   - Configure quaisquer opções adicionais conforme necessário, como diretórios de instalação.

6. **Conclua a Instalação:**
   - Após configurar as opções, o instalador começará a instalação do SSMS. Aguarde até que o processo seja concluído.

## CONFIGURAÇÃO INICIAL NO SSMS:
1. **Inicie o SQL Server Management Studio:**
   - Após a instalação, abra o SSMS a partir do menu Iniciar do Windows.

2. **Conecte-se ao Servidor SQL:**
   - No SSMS, na caixa de diálogo de conexão, insira as credenciais do servidor SQL. Use o nome do servidor para a instância padrão ou o nome da instância para uma instância nomeada, seguido do tipo de autenticação (Windows ou SQL Server).

3. **Explore e Gerencie seu Servidor:**
   - Uma vez conectado, você poderá explorar bancos de dados, criar novos bancos de dados, executar consultas SQL, gerenciar segurança e muito mais através da interface do SSMS.

Este guia cobre os passos básicos para instalar e configurar tanto o SQL Server quanto o SQL Server Management Studio (SSMS). 