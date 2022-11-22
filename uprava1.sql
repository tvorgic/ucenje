# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\edunovapp26\uprava1.sql

drop database if exists uprava1;
create database uprava1;
use uprava1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra)

