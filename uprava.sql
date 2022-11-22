# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\edunovapp26\uprava.sql

drop database if exists uprava;
create database uprava;
use uprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)  
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);