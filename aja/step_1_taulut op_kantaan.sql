--t‰ll‰ skriptill‰:
-- 1. tyhjennet‰‰n ja poistetaan operatiivisen kannan taulut
-- 2. luodaan operatiivisen kannan taulut uudestaan
create database snowflake_op

use snowflake_op
go

-- taulujen tyhjennys 
truncate table asiakas
truncate table myyja
truncate table toimipiste
truncate table tuote
truncate table tuotealiryhma
truncate table tuote_yksilo
truncate table tuoteryhma
truncate table varaus
truncate table varausrivi

--taulujen poisto
drop table asiakas
drop table myyja
drop table toimipiste
drop table tuote
drop table tuotealiryhma
drop table tuote_yksilo
drop table tuoteryhma
drop table varaus
drop table varausrivi


--taulujen luonti 
create table tuotealiryhma 
(tuotealiryhma_id INT identity PRIMARY KEY NOT NULL,
nimi nvarchar(50) NOT NULL,
tuoteryhma_id INT NULL)

create table varaus 
(varaus_id INT identity PRIMARY KEY NOT NULL,
asiakas_id INT NULL,
varaustyyppi nvarchar(10) NOT NULL,
--toimipiste_id INT NULL,
myyja_id INT NULL,
varaus_pvm date NOT NULL,
era_pvm date NOT NULL,
maksu_pvm date NOT NULL,
loppusumma decimal(7,2) NULL,
vero_pros tinyint NOT NULL)

create table toimipiste 
(toimipiste_id INT identity PRIMARY KEY NOT NULL,
toimipiste_tyyppi nvarchar(50) NOT NULL,
osoite nvarchar(50) NULL,
koordinaatit geography NOT NULL,
nimi nvarchar(50) NULL,
kaupunki nvarchar(50) NOT NULL,
maa nvarchar(50) NOT NULL)


alter table tuote alter column merkki nvarchar(50)

create table tuote
(tuote_id INT primary key identity,
merkki varchar(50) NOT NULL,
malli nvarchar(50) NOT NULL,
kuvailu nvarchar(max) NOT NULL,
tuotealiryhma_id INT NULL)

create table tuote_yksilo
(yksilo_id int primary key identity,
hankinta_pvm date NOT NULL,
kunto nvarchar(max) NULL,
akun_tila tinyint NOT NULL,
ostohinta decimal(7,2),
viimeisin_sijainti INT NULL,
tuote_id INT NULL,
paivahinta decimal (5,2) NOT NULL)

create table varausrivi
(varausrivi_id INT primary key identity,
varaus_id INT NULL,
yksilo_id INT NULL,
alku_pvm datetime NOT NULL,
palautus_pvm datetime NOT NULL,
palautettu_pvm datetime NULL ,
noutopaikka INT NULL,
palautuspaikka INT NULL)


create table tuoteryhma
(tuoteryhma_id INT Primary key identity NOT NULL,
tuoteryhma_nimi nvarchar(50) NOT NULL,
ika_raja tinyint NULL)

create table asiakas
(asiakas_id INT Primary key identity NOT NULL,
nimi nvarchar(50) NOT NULL,
osoite nvarchar(100) NOT NULL,
VAT_num nvarchar(50) NULL,
hetu nvarchar(20) NULL,
puh_nro nvarchar(20) NOT NULL,
s_posti nvarchar(50) NOT NULL,
maa nvarchar(50) NOT NULL,
kaupunki nvarchar(50) NOT NULL)

create table myyja
(myyja_id INT Primary key identity NOT NULL,
toimipiste_id INT NULL,
nimi nvarchar(50) NOT NULL,
puh_nro nvarchar(20) NOT NULL,
s_posti nvarchar(50) NOT NULL,
tyon_alku_pvm date NOT NULL,
tyon_loppu_pvm date NOT NULL default '9999-12-31')
