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

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;


alter table pessoas
drop column profissao;

alter table pessoas;


