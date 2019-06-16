
create table usuariolt(
	id int(10) not null auto_increment primary key,
    primNome varchar(20) not null,
    ultNome varchar(20) not null,
    mensagem varchar(20) not null
)ENGINE=innoDB DEFAULT CHARSET=latin1;

drop table usuariolt;

insert into usuariolt(primNome, ultNome, mensagem)
values
("victor", "Silva", "algo");