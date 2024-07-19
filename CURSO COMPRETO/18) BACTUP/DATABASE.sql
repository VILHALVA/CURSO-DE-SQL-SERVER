USE [master]
GO
/****** Object:  Database [DB_ecommerce]    Script Date: 19/07/2024 15:27:03 ******/
CREATE DATABASE [DB_ecommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_ecommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_ecommerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_ecommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_ecommerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_ecommerce] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_ecommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_ecommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_ecommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_ecommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_ecommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_ecommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_ecommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_ecommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_ecommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_ecommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_ecommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_ecommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_ecommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_ecommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_ecommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_ecommerce] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_ecommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_ecommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_ecommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_ecommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_ecommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_ecommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_ecommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_ecommerce] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_ecommerce] SET  MULTI_USER 
GO
ALTER DATABASE [DB_ecommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_ecommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_ecommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_ecommerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_ecommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_ecommerce] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_ecommerce] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_ecommerce] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_ecommerce]
GO
/****** Object:  Table [dbo].[tb_cliente]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cliente](
	[id_cliente] [smallint] IDENTITY(1,1) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[data_nascimento] [date] NULL,
	[genero] [varchar](1) NULL,
	[endereco] [varchar](500) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](100) NULL,
	[uf] [varchar](2) NULL,
	[cep] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_email]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_email](
	[id_email] [smallint] IDENTITY(1,1) NOT NULL,
	[id_cliente] [smallint] NULL,
	[email] [varchar](255) NOT NULL,
	[score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_item_pedido]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_item_pedido](
	[id_item] [smallint] IDENTITY(1,1) NOT NULL,
	[id_pedido] [smallint] NULL,
	[id_produto] [smallint] NULL,
	[valor_item] [float] NULL,
	[valor_desconto] [float] NULL,
	[qtd_item] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pedido]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pedido](
	[id_pedido] [smallint] IDENTITY(1,1) NOT NULL,
	[id_cliente] [smallint] NULL,
	[data_compra] [date] NULL,
	[num_nota_fiscal] [varchar](100) NULL,
	[serie_nota_fiscal] [varchar](100) NULL,
	[valor_total] [float] NULL,
	[qtd_total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_produto]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_produto](
	[id_produto] [smallint] IDENTITY(1,1) NOT NULL,
	[desc_produto] [varchar](255) NOT NULL,
	[valor_produto] [float] NULL,
	[qtd_estoque] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_telefone]    Script Date: 19/07/2024 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_telefone](
	[id_telefone] [smallint] IDENTITY(1,1) NOT NULL,
	[id_cliente] [smallint] NULL,
	[ddd] [int] NOT NULL,
	[telefone] [int] NOT NULL,
	[score] [int] NULL,
	[tipo_telefone] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_cliente] ON 

INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (1, N'1111', N'CAMILA', CAST(N'1988-02-09' AS Date), N'F', N'RUA: MONTE VERDE,100', N'VILA IPIRANGA', N'MOGI DAS CRUZES', N'SP', N'8735510')
INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (2, N'2222', N'KIKO', CAST(N'1988-11-25' AS Date), N'F', N'RUA: SUZANO, 500', N'COPACABANA', N'RIO DE JANEIRO', N'RJ', N'8778510')
INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (3, N'3333', N'SEU MADRUGA', CAST(N'2000-05-08' AS Date), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (4, N'1111', N'CHIQUINHA', CAST(N'1988-02-09' AS Date), N'F', N'RUA: MONTE VERDE,100', N'VILA IPIRANGA', N'MOGI DAS CRUZES', N'SP', N'8735510')
INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (5, N'4444', N'JULIO', CAST(N'2000-05-08' AS Date), N'M', N'RUA: FLORENCIO DE ABREU, 500', N'CENTRO', N'EXTREMA', N'MG', N'4535510')
INSERT [dbo].[tb_cliente] ([id_cliente], [cpf], [nome], [data_nascimento], [genero], [endereco], [bairro], [cidade], [uf], [cep]) VALUES (6, N'4444', N'JULIO', CAST(N'2000-05-08' AS Date), N'M', N'RUA: FLORENCIO DE ABREU, 500', N'CENTRO', N'EXTREMA', N'MG', N'4535510')
SET IDENTITY_INSERT [dbo].[tb_cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_email] ON 

INSERT [dbo].[tb_email] ([id_email], [id_cliente], [email], [score]) VALUES (1, 1, N'CHIQUINHA@GMAIL.COM', 1)
INSERT [dbo].[tb_email] ([id_email], [id_cliente], [email], [score]) VALUES (2, 2, N'KIKO@GMAIL.COM', 1)
INSERT [dbo].[tb_email] ([id_email], [id_cliente], [email], [score]) VALUES (3, 3, N'SEU_MADRUGA@GMAIL.COM', 1)
INSERT [dbo].[tb_email] ([id_email], [id_cliente], [email], [score]) VALUES (4, 3, N'SEU_MADRUGA_2@GMAIL.COM', 2)
SET IDENTITY_INSERT [dbo].[tb_email] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_item_pedido] ON 

INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (1, 1, 1, 88, 2, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (2, 1, 2, 119, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (3, 2, 3, 55, 5, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (4, 2, 4, 39, 1, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (5, 3, 1, 87, 3, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (6, 3, 2, 118, 2, 3)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (7, 4, 3, 59, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (8, 4, 4, 35, 5, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (9, 5, 1, 89, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (10, 5, 2, 117, 3, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (11, 6, 3, 58, 2, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (12, 6, 4, 39, 1, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (13, 7, 1, 85, 5, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (14, 7, 2, 119, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (15, 8, 3, 57, 3, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (16, 8, 4, 38, 2, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (17, 9, 1, 89, 1, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (18, 9, 2, 115, 5, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (19, 10, 3, 59, 1, 3)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (20, 10, 4, 37, 3, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (21, 11, 1, 88, 2, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (22, 11, 2, 119, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (23, 12, 3, 55, 5, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (24, 12, 4, 39, 1, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (25, 13, 1, 87, 3, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (26, 13, 2, 118, 2, 2)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (27, 14, 3, 59, 1, 1)
INSERT [dbo].[tb_item_pedido] ([id_item], [id_pedido], [id_produto], [valor_item], [valor_desconto], [qtd_item]) VALUES (28, 14, 4, 35, 5, 1)
SET IDENTITY_INSERT [dbo].[tb_item_pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_pedido] ON 

INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (1, 1, CAST(N'2022-02-09' AS Date), N'aaa1254', N'111', 207, 2)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (2, 1, CAST(N'2022-12-13' AS Date), N'aaa1255', N'238', 133, 3)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (3, 1, CAST(N'2022-12-15' AS Date), N'aaa1256', N'122', 528, 5)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (4, 1, CAST(N'2022-03-20' AS Date), N'aaa1257', N'145', 94, 2)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (5, 1, CAST(N'2022-03-20' AS Date), N'aaa1258', N'258', 206, 2)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (6, 2, CAST(N'2022-09-26' AS Date), N'aaa1259', N'963', 194, 4)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (7, 2, CAST(N'2022-07-12' AS Date), N'bnb4886', N'147', 289, 3)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (8, 2, CAST(N'2022-07-15' AS Date), N'bnb4887', N'856', 95, 2)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (9, 3, CAST(N'2022-07-01' AS Date), N'bnb4888', N'321', 408, 4)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (10, 3, CAST(N'2022-04-03' AS Date), N'bnb4889', N'788', 214, 4)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (11, 3, CAST(N'2022-04-15' AS Date), N'cfd7785', N'741', 207, 2)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (12, 3, CAST(N'2022-07-15' AS Date), N'cfd7786', N'125', 133, 3)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (13, 3, CAST(N'2022-02-18' AS Date), N'cfd7787', N'963', 410, 4)
INSERT [dbo].[tb_pedido] ([id_pedido], [id_cliente], [data_compra], [num_nota_fiscal], [serie_nota_fiscal], [valor_total], [qtd_total]) VALUES (14, 3, CAST(N'2022-11-10' AS Date), N'cfd7788', N'125', 94, 2)
SET IDENTITY_INSERT [dbo].[tb_pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_produto] ON 

INSERT [dbo].[tb_produto] ([id_produto], [desc_produto], [valor_produto], [qtd_estoque]) VALUES (1, N'Bola Quadrada', 90, 12452)
INSERT [dbo].[tb_produto] ([id_produto], [desc_produto], [valor_produto], [qtd_estoque]) VALUES (2, N'Maquina Fotografica', 120, 1245)
INSERT [dbo].[tb_produto] ([id_produto], [desc_produto], [valor_produto], [qtd_estoque]) VALUES (3, N'Sanduiche de Presunto', 60, 4574)
INSERT [dbo].[tb_produto] ([id_produto], [desc_produto], [valor_produto], [qtd_estoque]) VALUES (4, N'Chinforinfola', 40, 32569)
SET IDENTITY_INSERT [dbo].[tb_produto] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_telefone] ON 

INSERT [dbo].[tb_telefone] ([id_telefone], [id_cliente], [ddd], [telefone], [score], [tipo_telefone]) VALUES (1, 1, 11, 985903841, 1, N'C')
INSERT [dbo].[tb_telefone] ([id_telefone], [id_cliente], [ddd], [telefone], [score], [tipo_telefone]) VALUES (2, 1, 11, 985697854, 2, N'C')
INSERT [dbo].[tb_telefone] ([id_telefone], [id_cliente], [ddd], [telefone], [score], [tipo_telefone]) VALUES (3, 2, 11, 985429623, 1, N'C')
INSERT [dbo].[tb_telefone] ([id_telefone], [id_cliente], [ddd], [telefone], [score], [tipo_telefone]) VALUES (4, 2, 11, 987459652, 2, N'C')
INSERT [dbo].[tb_telefone] ([id_telefone], [id_cliente], [ddd], [telefone], [score], [tipo_telefone]) VALUES (5, 3, 11, 945896328, 1, N'C')
SET IDENTITY_INSERT [dbo].[tb_telefone] OFF
GO
ALTER TABLE [dbo].[tb_email]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[tb_cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[tb_item_pedido]  WITH CHECK ADD FOREIGN KEY([id_pedido])
REFERENCES [dbo].[tb_pedido] ([id_pedido])
GO
ALTER TABLE [dbo].[tb_item_pedido]  WITH CHECK ADD FOREIGN KEY([id_produto])
REFERENCES [dbo].[tb_produto] ([id_produto])
GO
ALTER TABLE [dbo].[tb_pedido]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[tb_cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[tb_telefone]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[tb_cliente] ([id_cliente])
GO
/****** Object:  StoredProcedure [dbo].[ObterPedidosDoCliente]    Script Date: 19/07/2024 15:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==CRIANDO PROCEDURE==
CREATE PROCEDURE [dbo].[ObterPedidosDoCliente] @NomeCliente NVARCHAR(100) AS BEGIN SELECT DISTINCT CLI.CPF , CLI.NOME , em.email , tel.ddd , tel.telefone , PED.data_compra , PED.num_nota_fiscal , PED.qtd_total , PED.valor_total FROM tb_cliente CLI LEFT JOIN tb_email em on cli.id_cliente = em.id_cliente LEFT JOIN tb_telefone tel on cli.id_cliente = tel.id_cliente LEFT JOIN tb_pedido ped on cli.id_cliente = ped.id_cliente WHERE CLI.nome = @NomeCliente;

END;

-- Exemplo de execução da stored procedure 
DECLARE @Cliente NVARCHAR(100) = 'KIKO';
EXEC ObterPedidosDoCliente @NomeCliente = 'SEU MADRUGA';
GO
USE [master]
GO
ALTER DATABASE [DB_ecommerce] SET  READ_WRITE 
GO
