create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;
/*...............................................................*/
create database newbanco;
/*...............................................................*/
drop database newbanco;
/*...............................................................*/
create table pessoas(
	id int NOT NULL auto_increment,
	nome varchar(30) NOT NULL,
	nascimento date,
	sexo enum('M','F'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) default 'Portugal',
    primary key (id)
)default charset = utf8mb4;
/*...............................................................*/
drop table pessoas;
/*...............................................................*/
insert into pessoas
(nome,nascimento,sexo,peso,altura,nacionalidade)
value
('Nuno','1994-12-08','M','55','1.74','Portugal');
/*...............................................................*/
insert into pessoas(nome,nascimento,sexo,peso,altura,nacionalidade)
value('Cleisy','2003-11-03','F','54','1.54','Portugal');
/*...............................................................*/
insert into pessoas (nome,nascimento,sexo,peso,altura,nacionalidade)
value('Nyara','2020-12-17','F','17','1.07','default');
/*...............................................................*/
insert into pessoas (nome,nascimento,sexo,peso,altura,nacionalidade)
value
('Daniel','2022-12-25','M','15','1.2',default),
('Manuel','2012-12-25','M','65','1.4','Franca'),
('Jorge','2002-12-25','M','34','1.6',default),
('Nita','2002-12-05','F','42','1.4','Alemanha');

/*...............................................................*/
select * from pessoas;
/*...............................................................*/
desc pessoas; 

alter table pessoas;
select * from pessoas;

/*Altera a tabela pessoa adicionando coluna profissao depois do nome*/
alter table pessoas
add column profissao varchar(10) after nome;

/* altera a tabela pessoa adioninando a coluna codigo em primeiro*/
alter table pessoas
add column codigo int first;

/*elimina a coluna profissao*/
alter table pessoas
drop column profissao;

/*modifica os tipos e constrain*/
alter table pessoas
modify column profissao varchar (20) not null default '';


/*modifica o nome da coluna*/
alter table pessoas
change column profissao prof varchar(20) not null default '';

alter table Individios
change column profissao prof varchar(20) not null default '';

alter table pessoas
rename to Individios;

/*descrever coluna pessoa*/
desc pessoas;
desc Individios;

/*Criar uma nova tabela*/
create table if not exists curso(
nome varchar(30) not null unique,
descrisao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2025') default charset=utf8mb4;

alter table curso
add column idcurso int first;

alter table curso
add primary key (idcurso);

drop table curso;

desc curso;

/*Nova tabela*/

create table if not exists teste(
id int,
nome varchar(10),
idade int);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists aluno;
drop table if exists teste;

select * from individios;
select * from curso;
insert into curso value
('1','html4','curso de html','40','37','2014'),
('2','Algoritimo','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de photoshop cc','10','8','2014'),
('4','PGP','curso de php para iniciante','40','20','2010'),
('5','Jarva','Introdução a linguagem java','10','29','2000'),
('6','Mysql','Banco de dados mysql','30','15','2016'),
('7','Word','Curso completo de word','40','30','2016'),
('8','Sapateado','Danças Rítimicas','40','30','2018'),
('9','Cozinha Árabe','Aprender a fazer kibe','40','30','2018'),
('10','YouTuber','Gerar polémica e ganhar inscritos','5','2','2018');

select * from curso;

/*Modificando Linhas na tabela*/
update curso
set nome = 'html5'
where idcurso = '1';

/*Modificando duas colunas em uma Linhas na tabela*/
update curso 
set nome = 'PHP', ano = '2015'
where idcurso = '4';

/*Modificando três colunas em uma Linhas na tabela*/
update curso
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

/*Modificando a linha sem o limit*/
update curso
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;/*com o limit, limita aapenas uma linha*/

select * from curso;




