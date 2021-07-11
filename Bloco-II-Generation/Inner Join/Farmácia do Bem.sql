create database db_farmacia_do_bem;

use db_farmacia_do_bem;


create table tb_categoria(
id_categoria int auto_increment,
   quantidade int not null,
    tipo varchar(100) not null,
    primary key (id_categoria)
    );
        
/*-----------------------*--------------------------*--------------------------------------------*/
 use db_farmacia_do_bem;

create table tb_produto(
	id_produto bigint auto_increment,
    nome_produto varchar (100) not null,
    preco int not null,
    validade date,
    indicacao varchar (100) not null,
    fk_categoria int not null,
    primary key  (id_produto),
    foreign key (fk_categoria) references tb_categoria (id_categoria)
);

/*----------------------------------------Insert--------------------------------------------------------*/
  
use db_farmacia_do_bem;


select * from tb_categoria;

insert into tb_categoria (quantidade, tipo) values (38, "Manipulado");
insert into tb_categoria (quantidade, tipo) values (35, "Genérico");
insert into tb_categoria (quantidade, tipo) values (45, "Perfume");
insert into tb_categoria (quantidade, tipo) values (45, "Pastilha");
insert into tb_categoria (quantidade, tipo) values (35, "Absorvente");




/*----------------------------------------Insert--------------------------------------------------------*/
use db_farmacia_do_bem;


select * from tb_produto;


insert into tb_produto (nome_produto,preco,validade,indicacao,fk_categoria)
	values
	("Floral", 23.00, '23-07-2021', "Crianças e adultos", 4),
    ("Paractamol", 14.90, '06-08-2021', "Adultos", 4),
    ("Giovanna Baby", 35.00, '21-07-2021', "Infantil", 6),
    ("Strepsils", 12.00, '12-09-2021', "Adulto", 3),
    ("Aways", 23.90, '23-07-2024', "Adulto", 5),
    ("Barbeador", 26.90, '25-11-2021', "Adulto", 5),
    ("Homeopatico", 47.87, '23-03-2022', "Crianças e Adultos", 4),
    ("Neosaldina", 09.90, '23-07-2021', "Adulto", 2);



/*----------------------------------Select----------------------------------------------------*/

use db_farmacia_do_bem;


select nome_produto "Nome: " , preco "Preço: "  from tb_produto
	where preco > 50;


select  nome_produto "Nome: ", preco "Preço" from tb_produto
	where preco >= 3 and preco <= 60
    order by preco ASC;


select * from tb_produto
	where nome_produto like 'c%'
    order by nome_produto ASC;


select * from tb_categoria
	inner join tb_produto on tb_pproduto.fk_categoria = tb_categoria.id_categoria;

select tb_produto.nome_produto "Nome: ", tb_produto.preco "Preço: " , tb_produto.validade "Validade", tb_categoria.indicacao "Indicação: "
	from tb_produto
	inner join  tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria
  where tb_categoria.tipo= "Adulto"
   order by tb_produto.nome_produto ASC;

