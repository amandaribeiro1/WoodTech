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

create table leituraUmidade (
	idLeituraUmidade INT PRIMARY KEY AUTO_INCREMENT,
	dados DECIMAL,
	dtaHora DATETIME,
    fkSensor int,
    constraint fkSensor foreign key (fkSensor) references sensor(idSensor)
);


-- comando para sql server - banco remoto - ambiente de produção

create database woodtech;
use woodtech;



CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nomeEmpresa VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    cnpj char(14)
);

create table Fabrica (
  idFabrica int primary key auto_increment,
  nomeResponsavel varchar(45),
  endereco varchar(45),
  fkUsuario int,
  constraint fkUsuario foreign key (fkUsuario) references usuario (id)
);

create table sensor (
   idSensor int primary key auto_increment,
   localizacao varchar(45),
   fkFabrica int, 
   constraint fkFabrica foreign key (fkFabrica) references Fabrica(idFabrica)
);

create table leituraUmidade (
	idLeituraUmidade INT PRIMARY KEY AUTO_INCREMENT,
	dados DECIMAL,
	dtaHora DATETIME,
    fkSensor int,
    constraint fkSensor foreign key (fkSensor) references sensor(idSensor)
);


/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

-- CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
-- WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
-- DEFAULT_SCHEMA = dbo;

-- EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
-- @membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

-- EXEC sys.sp_addrolemember @rolename = N'db_datareader',
-- @membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';
