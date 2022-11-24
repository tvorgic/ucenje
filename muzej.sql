#lokalni path
#C:\Users\Tonko\Documents\edunovapp26\SQL\ucenje\muzej.sql

#cijeli path sa mysql -u root rasipanjem PODATAKA
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\ucenje\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table muzej(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    iban varchar(50),
    izlozba int
);

create table izlozba(
    sifra int not null primary key auto_increment,
    pocetak datetime,
    muzej int,
    sponzor int
);

create table djelo(
    sifra int not null primary key auto_increment,
    autor varchar(50),
    cijena decimal(18,2),
    naziv varchar(50),
    izlozba int
);


create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    izlozba int,
    djelo int
);

create table sponzor(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    iban varchar(50),
    izlozba int
);





alter table izlozba add foreign key (muzej) references muzej(sifra); 
alter table djelo add foreign key (izlozba) references izlozba(sifra); 
alter table kustos add foreign key (djelo) references djelo(sifra); 
alter table izlozba add foreign key (sponzor) references sponzor(sifra);


# 1 -  vrijednost sifre u tablici izlozba
insert into muzej (sifra,naziv,iban,izlozba)
            values(null,'kafka','HR123456789',1);