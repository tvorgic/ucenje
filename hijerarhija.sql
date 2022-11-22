
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\edunovapp26\hijerarhija.sql

drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    placa varchar(50),
    nadredjeni int
);

alter table zaposlenik add foreign key (nadredjeni) references zaposlenik(sifra);