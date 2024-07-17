-- Criando um banco de dados
CREATE DATABASE DB_ecommerce;

-- Usando um banco de dados
USE DB_ecommerce;

-- Renomeando um banco de dados
EXEC sp_renamedb 'DB_ecommerce', 'DB_ecommerce2'

-- Apagando um banco de dados
DROP DATABASE DB_ecommerce2;

-- Apagando um banco de dados se ele existir
DROP DATABASE IF EXISTS DB_ecommerce;