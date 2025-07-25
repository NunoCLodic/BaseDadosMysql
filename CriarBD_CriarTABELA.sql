/**********************************************DDL************************************************************/
/*
DATA DEFINITION LANGUAGE - COMANDOS DE DEFINICAO:
-CREATE DATABASE
-CREATE TABLE
*/

/**********************************************DML************************************************************/
/*
DATA MANIPULATION LANGUAGE - COMANDOS DE MANIPULAÇAO DE DADOS:
-INSERT INTO
*/




/*CRIAR BASE DE DADOS*****************************************************************************************/
create database cadastro;

/*CRIAR TABELAS***********************************************************************************************/
create table pessoas(
	nome varchar(30),
	idade tinyint,
	sexo char(1),
	peso float,
	altura float,
	nacionalidade varchar(20)
);

/*DESCREVER OU MOSTRAR UMA TABELA (PESSOAS)******************************************************************************/
	describe pessoas;

/***********************************************N0 CONSOLE:****************************************************
SHOW DATABASE;
USE CADASTRO;
STATUS;
EXIT;
**************************************************************************************************************/

/*APAGAR BASE DE DADOS*/
	drop database cadastro;


/*CRIAR BASE DADOS E TABELA COM CONSTRAINTS***********************************************************************/
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

/*A MESMA TABELA COM CHAVE PRIMARIA  E AUTO INCREMENTO***********************************************************/
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

create table gafanhotos(
	id int not null auto_increment,
	nome varchar (30) not null,
	profissao varchar (20) not null,
	nascimento date,
	sexo enum ('M','F'),
	peso decimal (5,2),
	altura decimal (3,2),
	nacionalidade varchar (20) default 'Brasil',
	PRIMARY KEY (id)
)default charset = utf8mb4;

describe gafanhotos;

/*ADICIONAR DADOS A TABELA*****************************************************************************************/
alter table gafanhotos 
add curso_preferido int;

/*ADICIONAR CHAVE ESTRANGEIRA A TABELA GAFANHOTOS******************************************************************/
alter table gafanhotos 
add foreign key (curso_preferido)
references cursos(idcurso);

select * from gafanhotos;

/*INTRODUZINDO DADOS A TABELA PESSOAS******************************************************************************/
insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo','1984-01-02','M','78.5','1.83','Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria','1999-12-30','F','55.2','1.65','Portugal');

/*INTRODUZIR UMA PESSOA COM O ID EM DEFAULT***********************************************************************/
insert into pessoas
(id,nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza','1920-12-30','F','55.2','1.83','Brasil');

/*SE A ORDEM DOS DADOS FOR A MESMA DA TABELA, ESCUSA DE COLOCAR NOME DOS DADOS DA TABELA**************************/
insert into pessoas values
(DEFAULT, 'Adalgiza', '1930-11-2','F','63.2','1.75','Irlanda');

/*APENAS UM INSER INTO PARA VARIOS DADOS**************************************************************************/
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Ana', '1975-12-22','F','52.3','1.45','EUA'),
(DEFAULT, 'Pedro', '2000-07-15','M','87','2',default),
(DEFAULT, 'Claudio', '1975-04-22','M','99.0','2.15','Brasil'),
(DEFAULT, 'Janaina', '1987-11-12','F','75.4','1.66','EUA'),
(DEFAULT, 'Filipa', '1999-05-30','F','75.9','1.70','Portugal');

select * from pessoas;
/*QUANDO FOR PARA ALTERAR DADOS A TABELA, ALTERAR GOLDOFREDO E ADALGIZA*********************************************/


/*ALTERAR TABELA, ADICIONANDO UMA COLUNA PROFISSAO*/
/*POR DEFEITO ESTE DADO VAI PARA ULTIMA POSICAO*/
alter table pessoas
add column profissao varchar (10);
select * from pessoas;

/*ALTERAR TABELA, REMOVENDO UMA COLUNA PROFISSAO PARA DEPOIS MUDAR A POSICAO DELA*/
alter table pessoas
drop column profissao;
select * from pessoas;

/*ADICIONAR NOVAMENTE A PROFISSAO EM OUTRA POSICAO (depois)*/
alter table pessoas
add column profissao varchar(10) after nome;
select * from pessoas;

/*E ADICIONAR ANTES DE ALGUMA COLUNA?*/
/*NAO TEM A OPCAO BEFORE, APENAS FIRST E DEPOIS É SEMPRE AFTER*/
alter table pessoas
add column codigo int first;
select * from pessoas;

/*E PARA MODIFICAR DADOS NUMA DETERMINADA COLUNA?*/
/*USA SE O MODIFY, MAS ESTE NAO PODE MODIFICAR O NOME DA COLUNA, APENAS OS DADOS DESTA COLUNA*/
alter table pessoas
modify column profissao varchar(20) not null default'';/*O DEFAULT EVITA O CONFLITO DO NOT NULL COM O MYSQL*/
select * from pessoas;

alter table pessoas
drop column profissao;

/*ENTAO COMO MODIFICAR O NOME DE UMA COLUNA?*/
/*DEVE SE USAR O CHANGE, MAS ESTE PERDE AS DEFINICOES DA COLUNA SE NAO COLOCAR TODAS*/
alter table pessoas
change column profissao prof varchar(20);
describe pessoas;
select * from pessoas;



