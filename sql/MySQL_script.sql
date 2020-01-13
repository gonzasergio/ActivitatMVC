create database if not exists activitatmvc;
use activitatmvc;

CREATE TABLE if not exists perfil (
id int(10) UNSIGNED not null AUTO_INCREMENT,
userName varchar(20) not null unique,
nom varchar(50) not null,
llinatge1 varchar(50) not null,
llinatge2 varchar(50),
dni varchar(9),
telefon int(9),
email varchar(200) not null,
id_ciutat int(10) UNSIGNED,
id_nivell int(10) UNSIGNED,
pass varchar(100) not null,
primary key (id)
);