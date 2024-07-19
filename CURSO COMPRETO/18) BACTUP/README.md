# BACTUP 
## IMPORTAÇÃO DO BANCO DE DADOS:
1. **Abra o SQL Server Management Studio (SSMS)**:
   - Conecte-se à instância do SQL Server.

2. **Abra o Arquivo SQL**:
   - No menu principal do SSMS, vá em **File > Open > File...**.
   - Navegue até o local onde o arquivo SQL está salvo, selecione-o e clique em **Open**.

3. **Verifique o Conteúdo do Arquivo SQL**:
   - O conteúdo do arquivo SQL será carregado em uma nova janela de consulta no SSMS.

4. **Conecte-se ao Banco de Dados Desejado**:
   - Certifique-se de que a janela de consulta está conectada à instância e banco de dados corretos onde você deseja executar o script.
   - Você pode verificar e alterar o banco de dados selecionado na barra de ferramentas ou usando o comando `USE [NomeDoBancoDeDados];` no início do script.

5. **Execute o Script SQL**:
   - Clique no botão **Execute** (ou pressione `F5`) para executar o script.
   - O SSMS processará o script e criará os objetos e dados conforme especificado no arquivo SQL.

## EXPORTAÇÃO DO BANCO DE DADOS:
1. **Abra o SQL Server Management Studio (SSMS)**:
   - Conecte-se à instância do SQL Server.

2. **Expanda o Nó "Databases"**:
   - No painel Object Explorer, expanda o nó "Databases" para ver a lista de bancos de dados.

3. **Clique com o Botão Direito no Banco de Dados Desejado**:
   - Selecione o banco de dados que você deseja exportar.

4. **Selecione "Tasks" ou "Tarefas" e Depois "Generate Scripts..."**:
   - No menu de contexto, vá até "Tasks" e clique em "Generate Scripts...".

5. **Inicie o Assistente de Geração de Scripts**:
   - A janela do "Generate and Publish Scripts" será aberta. Clique em "Next" na tela inicial.

6. **Escolha "Script entire database and all database objects"**:
   - Na tela "Choose Objects", selecione "Script entire database and all database objects" e clique em "Next".

7. **Especifique as Opções de Saída**:
   - Na tela "Set Scripting Options", você pode escolher salvar o script em um arquivo, copiar para a área de transferência, ou abrir no editor de consultas do SSMS.
   - Para salvar em um arquivo, selecione "Save to file" e escolha o local e o nome do arquivo.

8. [**Configurar Opções Avançadas**:](https://youtu.be/SW42zxfyKAY?si=BUkKb1149a3GAV-z)
   - Clique em "Advanced" para abrir a janela de opções avançadas.
   - Aqui, você precisa ajustar a configuração para incluir tanto o esquema quanto os dados:
     - **Types of data to script**: Selecione "Schema and Data" para incluir tanto a estrutura quanto os dados das tabelas.
   - Outras opções avançadas podem ser configuradas conforme necessário, mas essa é a principal configuração para incluir os dados.

9. **Concluir o Assistente**:
   - Clique em "OK" para fechar a janela de opções avançadas.
   - Clique em "Next" após configurar as opções avançadas.
   - Revise o resumo das opções e clique em "Finish" para iniciar a geração dos scripts.

10. **Acompanhe o Progresso e Finalize**:
   - O SSMS gerará o script conforme as configurações especificadas. Você verá o progresso na tela e uma mensagem de conclusão ao final.
   - Abra o arquivo gerado para revisar ou executar o script conforme necessário.

