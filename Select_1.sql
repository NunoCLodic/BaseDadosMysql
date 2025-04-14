
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