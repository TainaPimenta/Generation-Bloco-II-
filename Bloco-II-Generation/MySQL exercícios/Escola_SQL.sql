create database db_escuela;

use db_escuela;

create table tb_alunes(
	id bigint (3)  auto_increment,
    nome varchar(20) not null,
    idade int not null,
    matricula int not null,
    nota int not null,
    primary key (id)
);

use db_escuela;

select * from tb_alunes

insert into tb_alunes(nome, idade, matricula, nota) values("Ana", 16,2345, 6),("Bianca",16, 2534, 9),("Daniel", 15, 6634, 5);

select * from tb_alunes where salario > 7;
select * from tb_alunes where salario < 7;

update tb_alunes set nome = "Tainá", nota= 7
 where id = 3;
 
 select * from tb_alunes;
