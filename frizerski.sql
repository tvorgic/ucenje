# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\edunovapp26\frizerski.sql

drop database if exists frizerski;
create database frizerski;
use frizerski;

create table frizerskisalon(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    djelatnik int,
    lokacija varchar(50),
    radnovrijeme varchar(50),
    usluga int
);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime int,
    prezime int
    frizerskisalon int
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

alter table djelatnik add foreign key (frizerskisalon) references frizerskisalon(sifra);
