#E:\KODIRANJE\crvenikriz.sql

drop database if exists tinopodaci;
create database tinopodaci character set utf8mb4;
use tinopodaci;

create table crvenikrizosijek(
    id int not null primary key auto_increment, #fk
    Organizacija varchar(30) not null,
    Dobrovoljnidavateljikrvi int not null   #fk
);

create table Dobrovoljnidavateljikrvi(
    id int not null primary key auto_increment,
    Ime varchar(20) not null,
    Prezime varchar(20) not null,
    oib char(11) not null,
    Mobitel char(10) not null,
    Email varchar(20) not null,
    Ukupnodavanja int not null,#fk
    Prviput boolean
);

create table Krvnagrupa(
    id int not null primary key auto_increment,
    Ime varchar(30) not null,
    Prezime varchar(30) not null,
    Krvnagrupa varchar(10) not null,
    KoristenauSpasavanjuZivota int not null
);

create table Datumdavanja(
    id int not null primary key auto_increment,
    Ime varchar(30) not null,
    Prezime varchar(30) not null,
    PN int not null, #fk
    Datumdavanja datetime
);

create table BrojDavanjaKrvi(
    id int not null primary key auto_increment,
    Ime varchar(30) not null,
    Prezime varchar(30) not null,
    BrojDavanjaKrvi int not null
);


alter table Dobrovoljnidavateljikrvi add foreign key(Ukupnodavanja) references crvenikrizosijek (id);
alter table Krvnagrupa add foreign key (KoristenauSpasavanjuZivota) references Dobrovoljnidavateljikrvi(id);
alter table Datumdavanja add foreign key(PN) references Krvnagrupa(id);
alter table BrojDavanjaKrvi add foreign key(BrojDavanjaKrvi) references Datumdavanja(id);


insert into crvenikrizosijek (id,Organizacija,Dobrovoljnidavateljikrvi)
values(null,'Osijek','1');



insert into Dobrovoljnidavateljikrvi (id,Ime,Prezime,oib,Mobitel,Email,Ukupnodavanja,Prviput)
values(null,'Valentin','Mikić','29386319007','0976882031','mikictino@gmail.com','1', true),
(null,'Marin','Amdzić','12345678945','0924852351','mera@gmail.com','33',true);

update Dobrovoljnidavateljikrvi set Prviput='2' where Ime='Valentin';





