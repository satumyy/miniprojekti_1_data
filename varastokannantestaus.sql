use snowflake_dw

select * from dim_aika
select * from dim_asiakas
select * from dim_myyja
select * from dim_tuote
select * from dim_vuokrauspiste
select * from fact_vuokraus

--Vuonna 2020 tehtyjen vuokrausten summa verojen kanssa

select dai.vuosi as Vuosi, sum(fv.verollinen_summa)
from fact_vuokraus as fv 
join dim_aika as dai on dai.aika_id = fv.lopetus_pvm
where dai.vuosi = 2020
group by Vuosi

--Tampereella vuokratut yksilöt
 select dt.malli, dt.merkki, count(fv.kpl_maara) as [tuotteen vuokrausmäärä]
 from dim_tuote as dt
 join fact_vuokraus as fv on dt.tuoteyksilo_id = fv.tuoteyksilo_id
 join dim_vuokrauspiste as dv on fv.palautuspiste = dv.vuokrauspiste_id
 group by dt.malli, dt.merkki


 --asiakkaan ostokset tuoteryhmittäin
SELECT dim_asiakas.nimi, sum(verollinen_summa)as KokonaisSumma, sum(verojen_summa) as VerojenSumma, dim_tuote.tuotealiryhma from fact_vuokraus
JOIN dim_asiakas ON fact_vuokraus.asiakas_id = dim_asiakas.asiakas_id
JOIN dim_tuote ON fact_vuokraus.tuoteyksilo_id = dim_tuote.tuoteyksilo_id
where dim_asiakas.nimi = 'Boyle inc'
GROUP BY dim_asiakas.nimi, dim_tuote.tuotealiryhma

