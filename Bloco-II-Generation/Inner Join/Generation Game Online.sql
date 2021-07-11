create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id_classe int auto_increment,
    nome varchar(255) not null,
    preco int not null,
    brinde int not null,
    loja varchar (255) not null,
    primary key (id_classe)
    );
  
 /*-----------------------*--------------------------*--------------------------------------------*/
 
 use db_generation_game_online;


create table tb_personagem(
id_personagem bigint auto_increment,
    nome varchar(255) not null,
    ataque int not null,
    defesa int not null,
    magia int not null,
    fraqueza varchar (255) not null,
    fk_classe int, 
    primary key (id_personagem),
    foreign key (fk_classe) references tb_classe (id_classe)
 );
/*----------------------------------------Insert--------------------------------------------------------*/

select * from tb_classe;

insert into tb_classe (nome,preco,brinde,loja) values ("Xbox360",4500.00,"Mouse", "Americanas");
insert into tb_classe (nome,preco,brinde,loja) values ("Playstation",3500.00,"Caneta", "Americanas");
insert into tb_classe (nome,preco,brinde,loja) values ("Wii",4500.00,"Caneca", "Americanas");
insert into tb_classe (nome,preco,brinde,loja) values ("Xbox one",2500.00,"Camiseta", "Amazon");
insert into tb_classe (nome,preco,brinde,loja) values ("Playstation 3",4900.00,"Boné", "Mercado Livre");

/*----------------------------------------Insert--------------------------------------------------------*/


insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Michael Scott",7485, 9283, 3984, 2039);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Dwight",9600, 6458, 2839,930);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Sheldon",7500,8000,9100,8700);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Penny",9700,8700,8009,320);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Jake Peralta",9500,7600,9800,6800);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Amy Santiago",7500,6000,8900,5500);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Yennifer",9700,1000,1000,230);
insert into tb_personagem (nome,ataque,defesa,magia,fraqueza) values ("Jackie Chan",5800,8200,8300,700);

select * from tb_personagem;

update tb_classe set brinde = "Brinde" where id_classe = 3;  

/*----------------------------------Select----------------------------------------------------*/

select nome, magia from tb_personagem
	where magia > 2000;

select nome "Nome" , fraqueza "Fraquesa" from tb_personagem 
	where ataque >= 1000 and ataque <= 2000;

select nome"Nome:" from tb_personagem 
	where nome like 'C%';
    
select * from tb_classe
	inner join tb_personagem on tb_personagem.fk_classe = tb_classe.id_classe
where tb_classe.nome= "Jackie Chan";

select tb_personagem.nome "Nome:", tb_classe.loja "Americanas"
	from tb_personagem
	inner join tb_classe on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_classe.nome= "Xbox360";