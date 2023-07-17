--t‰ll‰ skriptill‰:
--1. m‰‰ritell‰‰n foreign keyt
--2. uudelleenm‰‰ritell‰‰n null-rajoituksia

use snowflake_op
go

-- FOREIGN KEY m‰‰rittelyt
--ok
ALTER TABLE tuotealiryhma
ADD FOREIGN KEY (tuoteryhma_id) REFERENCES tuoteryhma(tuoteryhma_id);

--ok
ALTER TABLE tuote
ADD FOREIGN KEY (tuotealiryhma_id) REFERENCES tuotealiryhma(tuotealiryhma_id);
-- ok
ALTER TABLE tuote_yksilo
ADD FOREIGN KEY (viimeisin_sijainti) REFERENCES varausrivi(varausrivi_id);
--ok
ALTER TABLE tuote_yksilo
ADD FOREIGN KEY (tuote_id) REFERENCES tuote(tuote_id);
--ok
ALTER TABLE varausrivi
ADD FOREIGN KEY (varaus_id) REFERENCES varaus(varaus_id);
--ok
ALTER TABLE varausrivi
ADD FOREIGN KEY (yksilo_id) REFERENCES tuote_yksilo(yksilo_id);


--ok
ALTER TABLE varausrivi
ADD FOREIGN KEY (noutopaikka) REFERENCES toimipiste(toimipiste_id);
--ok
ALTER TABLE varausrivi
ADD FOREIGN KEY (palautuspaikka) REFERENCES toimipiste(toimipiste_id);

-- huom t‰m‰ foreign key p‰‰tettiin dropata varaus-taulusta
--ALTER TABLE varaus
--ADD FOREIGN KEY toimipiste_id REFERENCES toimipiste(toimipiste_id);
--ok
ALTER TABLE varaus
ADD FOREIGN KEY (myyja_id) REFERENCES myyja(myyja_id);
--ok
ALTER TABLE varaus
ADD FOREIGN KEY (asiakas_id) REFERENCES asiakas(asiakas_id);
--ok
ALTER TABLE myyja
ADD FOREIGN KEY (toimipiste_id) REFERENCES toimipiste(toimipiste_id);



-- null-arvojen m‰‰rittely

UPDATE tuotealiryhma SET tuoteryhma_id=0 WHERE tuoteryhma_id IS NULL
ALTER TABLE tuotealiryhma ALTER COLUMN tuoteryhma_id INTEGER NOT NULL

UPDATE varaus SET asiakas_id=0 WHERE asiakas_id IS NULL
ALTER TABLE varaus ALTER COLUMN asiakas_id INTEGER NOT NULL

UPDATE tuote SET tuotealiryhma_id=0 WHERE tuotealiryhma_id IS NULL
ALTER TABLE tuote ALTER COLUMN tuotealiryhma_id INTEGER NOT NULL

UPDATE tuote_yksilo SET ostohinta=0 WHERE ostohinta IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN ostohinta INTEGER NOT NULL

UPDATE tuote_yksilo SET viimeisin_sijainti=0 WHERE viimeisin_sijainti IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN viimeisin_sijainti INTEGER NOT NULL

UPDATE tuote_yksilo SET tuote_id=0 WHERE tuote_id IS NULL
ALTER TABLE tuote_yksilo ALTER COLUMN tuote_id INTEGER NOT NULL

UPDATE varausrivi SET varaus_id=0 WHERE varaus_id IS NULL
ALTER TABLE varausrivi ALTER COLUMN varaus_id INTEGER NOT NULL

UPDATE varausrivi SET yksilo_id=0 WHERE yksilo_id IS NULL
ALTER TABLE varausrivi ALTER COLUMN yksilo_id INTEGER NOT NULL

UPDATE varausrivi SET noutopaikka=0 WHERE noutopaikka IS NULL
ALTER TABLE varausrivi ALTER COLUMN noutopaikka INTEGER NOT NULL

UPDATE varausrivi SET palautuspaikka=0 WHERE palautuspaikka IS NULL
ALTER TABLE varausrivi ALTER COLUMN palautuspaikka INTEGER NOT NULL

UPDATE myyja SET toimipiste_id=0 WHERE toimipiste_id IS NULL
ALTER TABLE myyja ALTER COLUMN toimipiste_id INTEGER NOT NULL