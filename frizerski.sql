

# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\ucenje\frizerski.sql


drop database if exists frizerski;
create database frizerski;
use frizerski;

create table frizerskisalon(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    djelatnik int,
    lokacija varchar(50),
    radnovrijeme varchar(50),
    korisnik int
);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime int,
    prezime int,
    frizerskisalon int,
    korisnik int

);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    frizerskisalon int,
    djelatnik int
);

alter table djelatnik add foreign key (frizerskisalon) references frizerskisalon(sifra);
alter table djelatnik add foreign key (korisnik) references korisnik(sifra);

