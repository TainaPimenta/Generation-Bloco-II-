create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
	id_categoria int auto_increment,
    tipo_categoria varchar(255) not null,
    estoque boolean not null,
    primary key (id_categoria)
);
/*----------------------------------------------------------------------------------------------*/
use db_cidade_das_carnes;


create table tb_produto(
	id_produto int auto_increment,
    nome varchar(255) not null,
    preco float not null,
    validade date,
    fk_categoria int not null,
    primary key (id_produto),
    foreign key (fk_categoria) references tb_categoria(id_categoria)
);

/*-------------------------select--------------------------------------------------*/

USE db_cidade_das_carnes;

INSERT INTO tb_categoria(tipo_categoria, estoque)
	VALUES
    ("Carne vermelha", true),
    ("Carne branca", true),
    ("cerveja", true),
    ("Carvão", true),
    ("Gelo", true);
    
select* from tb_categoria;

insert into tb_produto(nome, preco, validade, fk_categoria)
	values
    ("Costela", 35.00, '25-06-2021', 1),
    ("Engradado Brahma", 23.00, '26-08-2022', 3),
    ("Coxa de frango", 15.78, '05-07-2021', 1),
    ("Coração", 5.78, '17-07-2021', 2),
    ("Moela", 85.18, '30-06-2021', 2),
    ("Salsicha", 2.21, '24-06-2021', 2),
    ("Peixe", 1.99, '20-06-2021', 4),
    ("Doce de amendoim", 13.25, '13-01-2021', 4);
    
select * from tb_produto;

/*-------------------------------------------====---------------=====--------------------*/

use db_cidade_das_carnes;

select nome "Nome:", preco "Preço:"from tb_produto 
	where preco > 50;

select nome "Nome:" , preco"Preço:" 
	from tb_produto
    where preco >= 3 and preco <= 60
    order by nome asc;

select nome "Nome:" from tb_produto
	where nome like 'C%'
    order by nome asc;
    
select * from tb_categoria
	inner join tb_produto on tb_produto.fk_categoria = tb_categoria.id_categoria;

select tb_produto.nome "Nome:", tb_produto.preco "Preço", tb_categoria.tipo_categoria "Categoria"
	from tb_produto
	inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria
    where tb_categoria.tipo_categoria = "Carne Branca" or tb_categoria.tipo_categoria = "Cerveja"
    order by tb_produto.nome asc;