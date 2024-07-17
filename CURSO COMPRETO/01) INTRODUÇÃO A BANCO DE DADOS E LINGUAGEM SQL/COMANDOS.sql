-- Criação de Tabelas
-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteId INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100),
    Telefone NVARCHAR(20)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoId INT PRIMARY KEY,
    ClienteId INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteId) REFERENCES Clientes(ClienteId)
);

-- Inserção de Dados
-- Inserir Clientes
INSERT INTO Clientes (ClienteId, Nome, Email, Telefone)
VALUES (1, 'João', 'joao@example.com', '(11) 1234-5678'),
       (2, 'Maria', 'maria@example.com', '(11) 9876-5432');

-- Inserir Pedidos
INSERT INTO Pedidos (PedidoId, ClienteId, DataPedido, ValorTotal)
VALUES (1, 1, '2024-07-01', 100.00),
       (2, 2, '2024-07-05', 250.50),
       (3, 1, '2024-07-10', 75.80);

-- Consulta de Dados com Junção (JOIN)
-- Selecionar Clientes e seus Pedidos
SELECT c.Nome AS NomeCliente, p.PedidoId, p.DataPedido, p.ValorTotal
FROM Clientes c
JOIN Pedidos p ON c.ClienteId = p.ClienteId;

-- Atualização de Dados
-- Atualizar o telefone do Cliente com ClienteId = 1
UPDATE Clientes
SET Telefone = '(11) 9999-9999'
WHERE ClienteId = 1;

-- Exclusão de Dados
-- Excluir Pedidos de um Cliente específico
DELETE FROM Pedidos
WHERE ClienteId = 2;

-- Consulta de Dados com Filtros
-- Selecionar Pedidos feitos após uma data específica
SELECT *
FROM Pedidos
WHERE DataPedido > '2024-07-05';
