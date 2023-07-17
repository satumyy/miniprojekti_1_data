--create table tuotealiryhma (
--tuotealiryhma_id INT identity PRIMARY KEY NOT NULL,
--nimi nvarchar(50) NOT NULL,
--tuoteryhma_id INT NULL)
UPDATE tuotealiryhma SET tuoteryhma_id=0 WHERE tuoteryhma_id IS NULL
ALTER TABLE tuotealiryhma ALTER COLUMN tuoteryhma_id INTEGER NOT NULL

--create table varaus (
--varaus_id INT identity PRIMARY KEY NOT NULL,
--asiakas_id INT NULL,
UPDATE varaus SET asiakas_id=0 WHERE asiakas_id IS NULL
ALTER TABLE varaus ALTER COLUMN asiakas_id INTEGER NOT NULL
--varaustyyppi nvarchar(10) NOT NULL,
--myyja_id INT NULL,
--varaus_pvm date NOT NULL,
--era_pvm date NOT NULL,
--maksu_pvm date NOT NULL,
--loppusumma decimal(7,2) NULL,
--vero_pros tinyint NOT NULL)


--create table toimipiste (
--toimipiste_id INT identity PRIMARY KEY NOT NULL,
--toimipiste_tyyppi nvarchar(50) NOT NULL,
--osoite nvarchar(50) NULL,
--koordinaatit geography NOT NULL,
--nimi nvarchar(50) NULL,
--kaupunki nvarchar(50) NOT NULL,
--maa nvarchar(50) NOT NULL)


--create table tuote
--(tuote_id INT primary key identity,
--merkki varchar(50) NOT NULL,
--malli nvarchar(50) NOT NULL,
--kuvailu nvarchar(max) NOT NULL,
--tuotealiryhma_id INT NULL)
UPDATE tuote SET tuotealiryhma_id=0 WHERE tuotealiryhma_id IS NULL
ALTER TABLE tuote ALTER COLUMN tuotealiryhma_id INTEGER NOT NULL


--create table tuote_yksilo
--(yksilo_id int primary key identity,
--hankinta_pvm date NOT NULL,
--kunto nvarchar(max) NULL,
--akun_tila tinyint NOT NULL,
--ostohinta decimal(7,2),
UPDATE tuote_yksilo SET ostohinta=0 WHERE ostohinta IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN ostohinta INTEGER NOT NULL
--viimeisin_sijainti INT NULL,
UPDATE tuote_yksilo SET viimeisin_sijainti=0 WHERE viimeisin_sijainti IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN viimeisin_sijainti INTEGER NOT NULL
--tuote_id INT NULL,
UPDATE tuote_yksilo SET tuote_id=0 WHERE tuote_id IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN tuote_id INTEGER NOT NULL
--paivahinta decimal (5,2) NOT NULL)

--create table varausrivi
--(varausrivi_id INT primary key identity,
--varaus_id INT NULL,
UPDATE varausrivi SET varaus_id=0 WHERE varaus_id IS NULL
ALTER TABLE varausrivi ALTER COLUMN varaus_id INTEGER NOT NULL
--yksilo_id INT NULL,
UPDATE varausrivi SET yksilo_id=0 WHERE yksilo_id IS NULL
ALTER TABLE varausrivi ALTER COLUMN yksilo_id INTEGER NOT NULL
--alku_pvm datetime NOT NULL,
--palautus_pvm datetime NOT NULL,
--palautettu_pvm datetime NULL ,
--noutopaikka INT NULL,
UPDATE varausrivi SET noutopaikka=0 WHERE noutopaikka IS NULL
ALTER TABLE varausrivi ALTER COLUMN noutopaikka INTEGER NOT NULL
--palautuspaikka INT NULL)
UPDATE varausrivi SET palautuspaikka=0 WHERE palautuspaikka IS NULL
ALTER TABLE varausrivi ALTER COLUMN palautuspaikka INTEGER NOT NULL


--create table tuoteryhma(
--tuoteryhma_id INT Primary key identity NOT NULL,
--tuoteryhma_nimi nvarchar(50) NOT NULL,
--ika_raja tinyint NULL
--)


--create table asiakas(
--asiakas_id INT Primary key identity NOT NULL,
--nimi nvarchar(50) NOT NULL,
--osoite nvarchar(100) NOT NULL,
--VAT_num nvarchar(50) NULL,
--hetu nvarchar(20) NULL,
--puh_nro nvarchar(13) NOT NULL,
--s_posti nvarchar(50) NOT NULL,
--maa nvarchar(50) NOT NULL,
--kaupunki nvarchar(50) NOT NULL
--)

--create table myyja(
--myyja_id INT Primary key identity NOT NULL,
--toimipiste_id INT NULL,
UPDATE myyja SET toimipiste_id=0 WHERE toimipiste_id IS NULL
ALTER TABLE myyja ALTER COLUMN toimipiste_id INTEGER NOT NULL
--nimi nvarchar(50) NOT NULL,
--puh_nro nvarchar(13) NOT NULL,
--s_posti nvarchar(50) NOT NULL,
--tyon_alku_pvm date NOT NULL,
--tyon_loppu_pvm date NOT NULL default '9999-12-31'
--)