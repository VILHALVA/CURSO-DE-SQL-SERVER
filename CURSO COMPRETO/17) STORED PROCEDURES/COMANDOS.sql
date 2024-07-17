-- ==CRIANDO PROCEDURE==
CREATE PROCEDURE ObterPedidosDoCliente @NomeCliente NVARCHAR(100) AS BEGIN SELECT DISTINCT CLI.CPF , CLI.NOME , em.email , tel.ddd , tel.telefone , PED.data_compra , PED.num_nota_fiscal , PED.qtd_total , PED.valor_total FROM tb_cliente CLI LEFT JOIN tb_email em on cli.id_cliente = em.id_cliente LEFT JOIN tb_telefone tel on cli.id_cliente = tel.id_cliente LEFT JOIN tb_pedido ped on cli.id_cliente = ped.id_cliente WHERE CLI.nome = @NomeCliente;

END;

-- Exemplo de execução da stored procedure 
DECLARE @Cliente NVARCHAR(100) = 'KIKO';
EXEC ObterPedidosDoCliente @NomeCliente = 'SEU MADRUGA';