-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create database woodtech;
use woodtech;



CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nomeEmpresa VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    cnpj char(14)
);

insert into usuario values 
(null,"Castilo","castilo@hotmail.com","castilo123","123458912345"),
(null,"MaterialUse","material@hotmail.com","material123","12341234121234"),
(null,"Nogueiras","nogueiras@hotmail.com","nogueira123","11123458123456");

select * from usuario;

create table Fabrica (
  idFabrica int primary key auto_increment,
  nomeResponsavel varchar(45),
  endereco varchar(45),
  fkUsuario int,
  constraint fkUsuario foreign key (fkUsuario) references usuario (id)
);

insert into Fabrica values
(null,"Amanda","Rua haddock Lobo 595",1),
(null,"Anna","Rua Augusta 1",2),
(null, "Caique","Avenida Paulista 2",3);

create table sensor (
   idSensor int primary key auto_increment,
   localizacao varchar(45),
   fkFabrica int, 
   constraint fkFabrica foreign key (fkFabrica) references Fabrica(idFabrica)
);

insert into sensor values 
(null, "area 3", 1),
(null, "area 2", 1),
(null, "area 1", 1),
(null, "area 3", 2),
(null, "area 2", 2),
(null, "area 1", 2),
(null, "area 1", 3);



create table leituraUmidade (
	idLeituraUmidade INT PRIMARY KEY AUTO_INCREMENT,
	dados DECIMAL,
	dtaHora DATETIME default current_timestamp,
    fkSensor int,
    constraint fkSensor foreign key (fkSensor) references sensor(idSensor)
);

insert into leituraUmidade values
(null,"100",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"97",null,1),
(null,"100",null,1),
(null,"100",null,1),
(null,"100",null,1),
(null,"100",null,1),
(null,"100",null,1),
(null,"100",null,1),

(null,"98",null,2),
(null,"98",null,2),
(null,"98",null,2),
(null,"98",null,2),
(null,"98",null,2),
(null,"98",null,2),
(null,"97",null,2),
(null,"95",null,2),
(null,"94",null,2),
(null,"94",null,2),
(null,"98",null,2),
(null,"98",null,2),
(null,"100",null,2),

(null,"100",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"98",null,1),
(null,"97",null,1),
(null,"95",null,1),
(null,"94",null,1),
(null,"94",null,1),
(null,"90",null,1),
(null,"88",null,1),
(null,"85",null,1);
