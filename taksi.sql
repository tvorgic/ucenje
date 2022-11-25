#lokalni path
#C:\Users\Tonko\Documents\edunovapp26\SQL\ucenje\taksi.sql

#cijeli path sa mysql -u root rasipanjem PODATAKA
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\ucenje\taksi.sql

drop database if exists taksi;
create database taksi;
use taksi;

create table taksi_sluzba(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    iban varchar(50),
    vozilo int,
    vozac int
);

create table vozilo(
    sifra int not null primary key auto_increment,
    reg varchar(50),
    vozac int
);

create table vozac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    putnik int,
    vozilo int

);

create table putnik(
    sifra int not null primary key auto_increment,
    vozac int,
    taksi_sluzba int
);


#alter table izlozba add foreign key (muzej) references muzej(sifra); 

alter table vozac add foreign key (vozilo) references vozilo(sifra);
alter table vozac add foreign key (putnik) references putnik(sifra);
alter table taksi_sluzba add foreign key (vozac) references vozac(sifra);

