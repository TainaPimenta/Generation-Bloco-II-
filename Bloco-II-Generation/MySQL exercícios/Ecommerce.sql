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

update tb_produtos set nome = "Xbox", preco_= 6450.00
 where id = 4;
 
 select * from tb_produtos;
          
