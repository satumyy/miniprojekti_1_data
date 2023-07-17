Insert into snowflake_dw.dbo.dim_tuote
Select yksilo_id, tuoteryhma_nimi, malli, merkki, paivahinta,ika_raja,nimi, getdate(), '9999-12-31'
from
  (
MERGE snowflake_dw.dbo.dim_tuote AS t
    USING (select 
		ty.yksilo_id, 
		tury.tuoteryhma_nimi, 
		tu.malli,tu.merkki,
		ty.paivahinta,
		tury.ika_raja, 
		ta.nimi 
from 
		tuote_yksilo ty
JOIN tuote tu ON ty.tuote_id = tu.tuote_id
JOIN tuotealiryhma ta ON ta.tuotealiryhma_id = tu.tuotealiryhma_id
JOIN tuoteryhma tury on tury.tuoteryhma_id = ta.tuoteryhma_id) as s
    ON s.yksilo_id = t.tuoteyksilo_biz_key
    WHEN MATCHED  AND (t.tuoteryhma != s.tuoteryhma_nimi OR
        t.malli != s.malli OR
        t.merkki != s.merkki OR
        t.paivahinta != s.paivahinta OR
        t.ika_raja != s.ika_raja OR
        t.tuotealiryhma != s.nimi) 
    Then
        UPDATE Set t.voimassa_paattyen = getdate()
    WHEN NOT MATCHED THEN 
        Insert (
		tuoteyksilo_biz_key, 
		tuoteryhma, 
		malli, 
		merkki,
		paivahinta,
		ika_raja, 
		tuotealiryhma) 
		values (
		s.yksilo_id, 
		s.tuoteryhma_nimi, 
		s.malli, 
		s.merkki, 
		s.paivahinta, 
		s.ika_raja, 
		s.nimi) 
    When not MATCHED by Source THEN
        delete
      OUTPUT $action, s.yksilo_id, s.tuoteryhma_nimi, s.malli, s.merkki, s.paivahinta, s.ika_raja, s.nimi
    )
    AS Type2Changes(MergeAction, yksilo_id, tuoteryhma_nimi, malli, merkki, paivahinta, ika_raja, nimi)
    WHERE MergeAction = 'UPDATE' and yksilo_id is not null;
