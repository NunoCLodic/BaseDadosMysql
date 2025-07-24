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

/*ADICIONAR DADOS A TABELA*/
alter table gafanhotos 
add curso_preferido int;

/*ADICIONAR CHAVE ESTRANGEIRA A TABELA GAFANHOTOS*/
alter table gafanhotos 
add foreign key (curso_preferido)
references cursos(idcurso);

select * from gafanhotos;

/*INTRODUZINDO DADOS A TABELA PESSOAS*/
insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('godofredo','1984-01-02','M','78.5','1.83','Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria','1999-12-30','F','55.2','1.65','Portugal');

/*INTRODUZIR UMA PESSOA COM O ID EM DEFAULT*/
insert into pessoas
(id,nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza','1920-12-30','F','55.2','1.83','Brasil');

/*SE A ORDEM DOS DADOS FOR A MESMA DA TABELA, ESCUSA DE COLOCAR NOME DOS DADOS DA TABELA*/
insert into pessoas values
();

select * from pessoas;


