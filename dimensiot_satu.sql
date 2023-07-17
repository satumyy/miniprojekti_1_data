create database miniprojekti1_dw

drop table Dim_vuokrauspiste
drop table Dim_myyja
drop table Dim_tuote
drop table Dim_aika 


create table dim_asiakas
(asiakas_id int primary key identity,
asiakas_biz_key int,
nimi nvarchar(50),
kaupunki nvarchar(50),
maa nvarchar(50),
alku_pvm date,
loppu_pvm date default '9999-12-31')

create table fact_vuokraus
(vuokraus_id int primary key identity,
aloitus_pvm int,
tuoteyksilo_id int,
lopetus_pvm int,
aloitus_klo time(7),
toteutunut_kesto time(7),
suunniteltu_kesto time(7),
asiakas_id int,
vuokrauspiste int,
palautuspiste int,
summa decimal(5,2),
veroton_summa decimal(5,2),
kpl_maara tinyint,
myyja_id int)

create table dim_vuokrauspiste(
vuokrauspiste_id INT Primary key identity,
vuokrauspiste_biz_key INT NOT NULL,
kaupunki nvarchar(50) NOT NULL,
maa nvarchar(50) NOT NULL,
koordinaatit geography NOT NULL,
tyyppi nvarchar(10) NOT NULL,
nimi nvarchar(50) NULL
)

create table dim_myyja(
myyja_id INT Primary key identity,
myyja_biz_key INT NOT NULL,
nimi nvarchar(10) NOT NULL)

create table dim_tuote(
tuoteyksilo_id INT identity PRIMARY KEY NOT NULL,
tuote_biz_key INT NOT NULL,
tuoteryhma nvarchar(50) NOT NULL,
malli nvarchar(50) NOT NULL,
merkki nvarchar(50) NOT NULL,
tuntihinta decimal (5,2) NOT NULL,
ika_raja tinyint NOT NULL,
tuotealiryhma nvarchar(50) NOT NULL,
voimassa_alkaen date NOT NULL,
voimassa_paattyen date NOT NULL default '9999-12-31'
)

create table dim_aika (
aika_id INt identity PRIMARY KEY NOT NULL,
pvm date NOT NULL,
vuosi smallint NOT NULL,
kuukausi tinyint NOT NULL,
kuukausi_nimi nvarchar(50) NOT NULL,
paiva tinyint NOT NULL,
viikonpaiva varchar(50) NOT NULL,
qtr tinyint NOT NULL)