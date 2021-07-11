create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categoria(
id_categoria int auto_increment,
    categoria varchar(100) not null,
    preco int not null,
    tipo varchar (100)  not null,
    primary key (id_categoria)
    );
  
 /*-----------------------*--------------------------*--------------------------------------------*/
 
use db_pizzaria_legal;

create table tb_pizza(
id_pizza bigint auto_increment,
    nome varchar(100) not null,
    preco int not null,
    sabor varchar(100) not null,
    brinde varchar(100) not null,
    fk_categoria int not null, 
    primary key (id_pizza),
    foreign key (fk_categoria) references tb_categoria (id_categoria)
 );
/*----------------------------------------Insert--------------------------------------------------------*/
use db_pizzaria_legal;


select * from tb_categoria;

insert into tb_categoria (categoria,preco,tipo) values ("Pizza",38, "Salgada");
insert into tb_categoria (categoria,preco,tipo) values ("Pizza",35, "Salgada");
insert into tb_categoria (categoria,preco,tipo) values ("Pizza",45, "Doce");
insert into tb_categoria (categoria,preco,tipo) values ("Pizza",45, "Doce");
insert into tb_categoria (categoria,preco,tipo) values ("Pizza",35, "Salgada");




/*----------------------------------------Insert--------------------------------------------------------*/
use db_pizzaria_legal;


select * from tb_pizza;


insert into tb_pizza (nome,preco,sabor,brinde,fk_categoria)
	values
	("Pizza Grande", 48.00, "Pepperoni", "Refrigerante", 4),
    ("Pizza Grande", 25.00, "Calabresa", "Refrigerante", 4),
    ("Pizza Grande", 25.00, "Mussarela", "Refrigerante", 4),
    ("Pizza Grande", 32.00, "Marguerita", "Refrigerante", 3),
    ("Pizza Doce", 37.00, "Brigadeiro", "Refrigerante", 5),
    ("Pizza Doce", 30.00, "Romeu e Julieta", "Refrigerante", 5),
    ("Pizza Grande", 32.90, "Portuguesa", "Refrigerante", 4),
    ("Brotinho", 32.00, "Frango", "Refrigerante", 2);



/*----------------------------------Select----------------------------------------------------*/

use db_pizzaria_legal;


select nome "Nome: " , preco "Preço: "  from tb_pizza
	where preco > 45;


select  nome "Nome: ", preco "Preço" from tb_pizza
	where preco >= 29 and preco <= 60
    order by preco ASC;


select * from tb_pizza
	where nome like 'c%'
    order by nome ASC;


select * from tb_categoria
	inner join tb_pizza on tb_pizza.fk_categoria = tb_categoria.id_categoria;

select tb_pizza.nome "Nome: ", tb_pizza.preco "Preço: " , tb_pizza.sabor "Sabor", tb_categoria.tipo "Brinde: "
	from tb_pizza
	inner join  tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_categoria
  where tb_categoria.tipo= "Salgada"
   order by tb_pizza.nome ASC;