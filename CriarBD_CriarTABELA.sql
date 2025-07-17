/*CRIAR BASE DE DADOS*/
create database cadastro;

/*CRIAR TABELAS*/
create table pessoas(
	nome varchar(30),
	idade tinyint,
	sexo char(1),
	peso float,
	altura float,
	nacionalidade varchar(20)
);

/*DESCREVER UMA TABELA (PESSOAS)*/
	describe pessoas;

/*NA CONSOLE:
SHOW DATABASE;
USE CADASTRO;
STATUS;
EXIT;
*/

/*APAGAR BASE DE DADOS*/
	drop database cadastro;


/*CRIAR BASE DADOS E TABELA COM CONSTRAINTS*/
	create database cadastro
	default character set utf8mb4
	default collate utf8mb4_general_ci;

create table pessoas(
	nome varchar (30) not null,
	nascimento date, 
	sexo enum('M', 'F'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) default 'Portugal'
)default charset = utf8mb4;

/*A MESMA TABELA COM CHAVE PRIMARIA  E AUTO INCREMENTO*/
create table pessoas(
	id int not null auto_increment,
	nome varchar (30) not null,
	nascimento date, 
	sexo enum('M', 'F'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) default 'Portugal',
    PRIMARY KEY (id)
)default charset = utf8mb4;


