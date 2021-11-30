drop database if exists GolfCompDB;
create database GolfCompDB;
use GolfCompDB;

drop table if exists competition;
create table competition(
	compname varchar(50) primary key,
	compdate date not null
)engine=InnoDB;

drop table if exists player;
create table player(
	playerpnr varchar(13) primary key,
	playername varchar(40) NOT NULL DEFAULT '',
    age int NOT NULL DEFAULT 0
)engine=InnoDB;

drop table if exists competitionParticipates;
create table competitionParticipates(
	compname varchar(50) not null,
    playerpnr varchar(13) not null,
    primary key (compname, playerpnr),
	foreign key (compname) references competition(compname) 
        on update cascade on delete restrict,
	foreign key (playerpnr) references player(playerpnr) 
        on update cascade on delete restrict
)engine=InnoDB;

-- Tar bort vindstyrka från regntyp, vind ger för många typer
drop table if exists rainType;
create table rainType(
	rainTypeId int unsigned auto_increment primary key,
	raintype varchar(15)
)engine=InnoDB;

-- egen tabell för om en tävling har regn, med vindstyrka
drop table if exists rain;
create table rain(
    rainTypeId int unsigned,
    windStrength int unsigned not null,
    occurance time not null,
    compname varchar(25) not null,
    primary key (compname, rainTypeId),
    foreign key (rainTypeId) references rainType(rainTypeId)
		on update cascade on delete restrict,
    foreign key (compname) references competition(compname)
        on update cascade on delete restrict
)engine=InnoDB;


-- tänkte först använda modelNr, men blir skumt med ett modelNr per storlek
drop table if exists jacket;
create table jacket(
	model varchar(30),
	size varchar(5) not null,
	material varchar(30) not null,
    playerpnr varchar(13) not null,
    primary key (model, playerpnr),
	foreign key(playerpnr) references player(playerpnr) 
        on update cascade on delete restrict
)engine=InnoDB;

drop table if exists golfclubconst;
create table golfclubconst(
	serialNr int unsigned primary key,
	hardness varchar(2)
)engine=InnoDB;

drop table if exists golfclub;
create table golfclub(
	nr int unsigned,
	material varchar(15),
    playerpnr char(13),
    serialNr int unsigned,
    primary key (nr, playerpnr, serialNr),
	foreign key(playerpnr) references player(playerpnr)
		on update cascade on delete restrict,
    foreign key (serialNr) references golfclubconst(serialNr)
		on update cascade on delete restrict
)engine=InnoDB;


