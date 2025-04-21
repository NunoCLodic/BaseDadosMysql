
/*Remove completamente a tabela do banco de dados incluindo os dados e sua estrutura*/
drop table curso;
drop table individios;

/* Seleciona todos os campos da tabela gafanhotos*/
select * from gafanhotos;
select * from cursos;

/*comando para selecionar todos os campos do curso ordenados pelo nome de forma decrescente*/
select * from cursos
order by nome desc;

/*comando para descrever o curso*/ 
describe curso;

/*filtra os dados pelas colunas da tabela*/
select nome, carga, ano from cursos
order by nome;

/*filtra os dados pelas linhas da tabela*/
select * from cursos
where ano = '2016'
order by nome; 

/*selecionando linhas e colunas*/
select nome, descricao, ano from cursos
where ano <= 2015
order by nome;

select nome, ano from cursos
where ano between 2014 and 2016/*curso entre este dois anos*/
order by ano desc, nome asc;

select nome, descricaom ano from cursos
where ano in (2014,2016)/*curso somente nesses anos*/
order by ano;

select * from cursos
where carga > 35 and totaulas < 30;

select * from cursos
where carga > 35 or totaulas < 30;

select * from cursos
where nome = 'php';

select * from cursos
where nome like '%a'; /*like = parecido, % = nenhum ou varios caracteres*/

select * from cursos
where nome like '%a%';/*"a" em qualquer lugar*/

select * from cursos
where nome not like '%a%';/*não tem "a" em nenhum lugar*/

/*comando de update*/
update cursos set nome = 'PáOO' 
where idcurso = '9';

select * from cursos 
where nome like 'ph%p%';/* não exige que termine com qualquer coisa*/

select * from cursos 
where nome like 'ph%p_'; /*exige que termine com qualquer coisa*/

select * from gafanhotos
where nome like '%_silva%';

/*DISTINGUINDO*/
select distinct nacionalidade from gafanhotos /*repetir apenas uma vez os paises*/
order by nacionalidade;

/*AGREGAÇÕES*/
select count(*) from cursos;/*conta todos os cursos*/

select count(*) from cursos
where carga >40;/*conta os que tenham carga maior de 40*/

select * from cursos
order by carga;

select max(carga) from cursos;/*maior carga*/

select * from cursos 
where ano = '2016';

select max(totaulas) from cursos /*dos cursos de 2016, qual teve mais aula*/
where ano = '2016';

select min(totaulas) from cursos /*dos cursos de 2016, qual teve menos aula*/
where ano = '2016';

select sum(totaulas) from cursos
where ano = '2016';

select avg(totaulas) from cursos/*media de total de aula em 2016*/
where ano = '2016';
