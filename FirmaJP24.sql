drop database if exists firmaJP24;
create database firmaJP24;
use firmaJP24;

create table projekt (
	id int primary key auto_increment not null,
	naziv varchar (50) not null,
	cijena decimal (18,2) not null
);

create table programer (
	id int primary key auto_increment not null,
	ime varchar (50) not null,
	prezime varchar (50) not null,
	datum_rodjenja datetime,
	placa decimal (18,2) not null
);

create table sudjeluje (
	projekt int not null,
	programer int not null,
	datum_pocetka datetime,
	datum_kraja datetime
);

alter table sudjeluje add foreign key (projekt) references projekt (id);
alter table sudjeluje add foreign key (programer) references programer (id);

insert into projekt (naziv, cijena) values 
('test', 2000.00),
('pogon', 5000.00),
('nadzor', 9650.99)
;

insert into programer (ime, prezime, datum_rodjenja, placa) values
('Charles','Luciano', '1980-03-21', 8500.00);
