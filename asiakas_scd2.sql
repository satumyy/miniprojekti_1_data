
Insert into snowflake_dw.dbo.dim_asiakas
Select asiakas_id, nimi, kaupunki, maa, '2020-06-01', '9999-12-31'
from
  (
  MERGE snowflake_dw.dbo.dim_asiakas AS t
    USING asiakas as s
    ON s.asiakas_id = t.asiakas_biz_key
    WHEN MATCHED  AND (t.nimi != s.nimi Or t.kaupunki != s.kaupunki OR t.maa != s.maa) 
	Then
		UPDATE Set t.alku_pvm = '2020-06-01', t.loppu_pvm = Getdate()
	WHEN NOT MATCHED THEN 
		Insert (asiakas_biz_key, nimi, kaupunki, maa) values (s.asiakas_id, s.nimi, s.kaupunki, s.maa) 
	When not MATCHED by Source THEN
		delete
  
  	OUTPUT $action, s.asiakas_id, s.nimi, s.kaupunki, s.maa, '2020-06-01', '9999-12-31'
	)
	AS Type2Changes(MergeAction, asiakas_id, nimi, kaupunki, maa, alku_pvm, loppu_pvm)
	WHERE MergeAction = 'UPDATE' and asiakas_id is not null;
