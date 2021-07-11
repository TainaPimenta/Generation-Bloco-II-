<<<<<<< HEAD
use db_ecommerce;

create table tb_produtos(
	id bigint (5)  auto_increment,
    nome varchar(20) not null,
    preco_ decimal (10,0) not null,
    marca varchar (10)
    primary key (id)
);

use db_ecommerce;

select * from tb_produtos
tb_produtos
insert into tb_produtos(nome, preco, marca) values("Camiseta", 35, "adidas"), ("Bolsa", 1000, "Channel"), ("Sandália", 20, "Melissa"), ("Bone", 15, "lacoste"), ("Videogame",5000,"Xbox");

select * from tb_produtos where preco_ > 500;
select * from tb_produtos where preco_< 500;

update tb_produtos set nome = "Xbox", salario= 5400.00
 where id = 4;
 
 select * from tb_produtos;
          tb_estudiantes
=======
create database db_rh;

use db_rh;

create table tb_funcionaries(
	id bigint (5)  auto_increment,
    nome varchar(20) not null,
    idade int not null,
    salario decimal (10,0) not null,
    primary key (id)
);

use db_rh;

select * from tb_funcionaries

insert into tb_funcionaries(nome, idade, salario) values("Vivian", 23,4500.00),("Selena", 25, 6000.00),("Vitória", 26 3200.00);

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set nome = "João", salario= 5400.00
 where id = 4;
 
 select * from tb_funcionaries;
>>>>>>> 873ab1c65bae041b7cfaabdae5499835bc8d8bf2
