insert into fact_vuokraus
SELECT vr.varausrivi_id as varausrivi_id,
CAST(CONVERT(varchar(8),vr.alku_pvm,112)as int) as aloitus_pvm,
dt.tuoteyksilo_id as tuoteyksilo,
CAST(CONVERT(varchar(8),vr.palautettu_pvm,112)as int)as lopetus_pvm,
das.asiakas_id,
dv1.vuokrauspiste_id as vuokrauspiste,
dv2.vuokrauspiste_id as palautuspiste,
dt.paivahinta*cast(datediff(dd,vr.alku_pvm,vr.palautettu_pvm)as decimal(8,2)) as veroton_summa,
(dt.paivahinta*cast(datediff(dd,vr.alku_pvm,vr.palautettu_pvm)as decimal(8,2))) *1.24 as verollinen_summa,
(dt.paivahinta*cast(datediff(dd,vr.alku_pvm,vr.palautettu_pvm)as decimal(8,2))) * 0.24 as verojen_summa,
1 as lkm,
dm.myyja_id
FROM            snowflake_op.dbo.varausrivi vr INNER JOIN
                snowflake_op.dbo.varaus v ON vr.varaus_id = v.varaus_id
JOIN dim_tuote dt ON dt.tuoteyksilo_biz_key = vr.yksilo_id
JOIN dim_asiakas das ON das.asiakas_biz_key = v.asiakas_id
JOIN dim_vuokrauspiste dv1 ON dv1.vuokrauspiste_biz_key = vr.noutopaikka
JOIN dim_vuokrauspiste dv2 ON dv2.vuokrauspiste_biz_key = vr.palautuspaikka
JOIN dim_myyja dm ON dm.myyja_biz_key = v.myyja_id