# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\ucenje\udruga.sql

drop database if exists udruga;
create database udruga;
use udruga;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    dob int

);

create table sticenik(
    sifra int not null primary key auto_increment,
    vrsta varchar(50),
    dob int,
    brchipa varchar(50)
);

create table prostor(
    sifra int not null primary key auto_increment,
    duzina int,
    sirina int,
    visina int
);

alter table osoba add foreign key(sticenik) references sticenik(sifra);

