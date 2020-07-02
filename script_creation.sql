# DDL ==> Data Definition Language

# create database mocodo_db; ==> Leve une exception si la BDD existe
create database if not exists mocodo_db;

# Selectionne la BDD courante
use mocodo_db;

# Creation de la table Client
create table if not exists Client
(
    idClient int unsigned auto_increment,
    nom      varchar(20) not null,
    email    varchar(50) not null,
    mdp      varchar(15),
    sexe     char(1),
    constraint pk_client primary key (idClient),
    constraint uq_client_email unique (email)
);

create table if not exists Commande
(
    idCommande   int unsigned auto_increment,
    idClient     int unsigned,
    numero       smallint unsigned,
    dateCommande date,
    constraint pk_commande primary key (idCommande),
    constraint fk_commande_client foreign key (idClient) references Client (idClient)
);
#Alter pour modifier un Objet
alter table client
        alter sexe set default 'F';

alter table Client
add age int not null;

alter table Client
    modify age int not null;

insert into client
value (1,'Roxana'), 'roxana@dawm.ge', '123456', 'F');

insert into client
values(2,'Roxana'), 'roxana@dawm.ge', '123456', 'F');

insert into client
(1,'Roxana'), 'Toulepi', 'toulepi@dawm.ge',);

insert into client
(1,'Souly'), 'souly', 'souly@dawm.ge',);

insert into client
(1,'Sabrine'), 'sabrine', 'sabrine@dawm.ge',);




create table if not exists command

#relier un tableau a une autre
alter table command
add constraint  fk_commande_client foreign key (ideclient)
references client;

#ajouter une contrainte
alter table Client
add constraint uq_client_email unique (email);

# mettre par defaut sexe au masculin
alter table Client
alter sexe set default 'M'
