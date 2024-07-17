# STORED PROCEDURES
Stored Procedures (Procedimentos Armazenados) no SQL Server são blocos de código SQL que são armazenados no banco de dados e podem ser executados repetidamente. Eles são úteis para encapsular lógica de negócios complexa, melhorar o desempenho de consultas frequentes, e proporcionar segurança ao limitar o acesso direto às tabelas.

## Vantagens das Stored Procedures
1. **Melhor Desempenho:** As stored procedures são pré-compiladas e armazenadas em cache, o que pode melhorar o desempenho em comparação com consultas SQL dinâmicas.
   
2. **Reutilização de Código:** Como as stored procedures podem ser chamadas de várias partes do aplicativo, promovem a reutilização de código e reduzem a duplicação.

3. **Segurança:** Elas ajudam a controlar o acesso aos dados, permitindo que os usuários executem apenas as operações permitidas.

4. **Manutenção Simples:** Alterações na lógica do procedimento armazenado podem ser feitas centralmente, sem necessidade de modificar o código do aplicativo.

## Criando Stored Procedures
Aqui está um exemplo simples de como criar uma stored procedure no SQL Server:

```sql
CREATE PROCEDURE GetEmployee
    @EmployeeID INT
AS
BEGIN
    SELECT *
    FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;
```

Neste exemplo:
- `CREATE PROCEDURE` é usado para definir uma nova stored procedure.
- `GetEmployee` é o nome da stored procedure.
- `@EmployeeID INT` é um parâmetro de entrada que especifica o ID do funcionário que desejamos recuperar.
- `AS` inicia o bloco de código da stored procedure.
- `SELECT * FROM Employees WHERE EmployeeID = @EmployeeID;` é a consulta SQL que a stored procedure executa.

## Executando Stored Procedures
Para executar uma stored procedure no SQL Server, você pode usar o comando `EXEC` ou `EXECUTE`:

```sql
EXEC GetEmployee @EmployeeID = 123;
```

## Exemplo de Stored Procedure Mais Complexa
Aqui está um exemplo de uma stored procedure mais complexa que usa parâmetros de entrada e saída:

```sql
CREATE PROCEDURE UpdateEmployeeSalary
    @EmployeeID INT,
    @NewSalary DECIMAL(10, 2) OUTPUT
AS
BEGIN
    UPDATE Employees
    SET Salary = @NewSalary
    WHERE EmployeeID = @EmployeeID;

    SET @NewSalary = (SELECT Salary FROM Employees WHERE EmployeeID = @EmployeeID);
END;
```

Neste exemplo:
- `@NewSalary DECIMAL(10, 2) OUTPUT` é um parâmetro de saída que retorna o novo salário após a atualização.
- `UPDATE Employees SET Salary = @NewSalary WHERE EmployeeID = @EmployeeID;` atualiza o salário do funcionário especificado.
- `SET @NewSalary = (SELECT Salary FROM Employees WHERE EmployeeID = @EmployeeID);` atribui o novo valor do salário ao parâmetro de saída `@NewSalary`.

## Considerações Finais
- **Segurança:** Use parâmetros para prevenir SQL injection ao passar dados para stored procedures.
- **Performance:** Stored procedures podem melhorar a performance, especialmente em operações complexas que são executadas frequentemente.
- **Documentação:** Mantenha documentação clara das stored procedures, incluindo seus parâmetros, finalidades e lógica.

