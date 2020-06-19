drop database projetocsc;
create database projetocsc;
use projetocsc;

create table usuario(
 id_usuario int not null auto_increment,
 nome varchar(45) not null,
 login varchar(45) not null unique,
 senha varchar(45) not null,
 acesso varchar(45) not null,
 primary key (id_usuario)
 );
 
insert into usuario(nome, login, senha, acesso)
values('Admin', 'admin', 'admin', 'Administrador');

select * from usuario;

create table tcc(
 id_tcc int not null auto_increment,
 titulo varchar(45) not null,
 professor varchar(45) not null,
 orientador varchar(45) not null,
 anoSemestre varchar(45) not null,
 tipo varchar(45) not null,
 curso varchar(45) not null,
 alunos varchar(240) not null,
 primary key (id_tcc)
);

insert into tcc(titulo, professor, orientador, AnoSemestre, tipo, curso, alunos)
values('Rede 5G', 'Thiele', 'Murilo', '2020/1', 'TCC1', 'Sistemas de Informação', 'Paulo Henrique Lopes Gomes/20200000001, Rogerio Resende Deus/20200000002 e Railson Carvalho/20200000003');

select * from tcc;

select * from tcc where id_tcc = 1;

select * from usuario where nome like 'a%';
