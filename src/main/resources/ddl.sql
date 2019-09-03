--SQL Server
--create database springboot;
--
--use springboot;
--
--create table tb_produtos (
--	id int identity(1,1) primary key,
--	nome varchar(30) not null,
--	descricao varchar(150)
--);

-- MySQL
create database springboot;

use springboot;

create table tb_produtos (
	id int primary key auto_increment,
	nome varchar(30) not null,
	descricao varchar(150)
);

