use snowflake_op

select * from tuote_yksilo
select * from tuote
select * from tuotealiryhma
select * from tuoteryhma
select  * from varaus
select * from varausrivi
select * from myyja
select * from toimipiste
select * from asiakas


-- Asiakastiedot liikkeestä (vuokraamosta) sekä mobiilisovelluksista
select a.asiakas_id, a.nimi, t.nimi, t.kaupunki
from asiakas as a 
join varaus as v on a.asiakas_id = v.asiakas_id
join varausrivi as vr on v.varaus_id = vr.varaus_id
join toimipiste as t on vr.noutopaikka = t.toimipiste_id

-- Myyjätiedot vuokraamoista
select t.nimi, t.kaupunki, m.nimi from toimipiste as t
join myyja as m on m.toimipiste_id=t.toimipiste_id

-- Vuokraamo ja vuokrausasemaien tiedot ja sijainnit
select nimi, kaupunki, maa, toimipiste_tyyppi, koordinaatit from toimipiste

-- Vuokraustapahtumat tarvittavine aikoineen ja rahoineen (ml. Alv) DATEDIFF ( datepart , startdate , enddate )  
select vr.varausrivi_id, vr.alku_pvm, vr.palautettu_pvm, ty.paivahinta,DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm) as paivat, ty.paivahinta*DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm) as rivinsumma
from varausrivi as vr
join tuote_yksilo as ty on ty.yksilo_id = vr.yksilo_id
join tuote as t on ty.tuote_id = t.tuote_id
order by paivat desc;

select v.varaus_id, 
sum(ty.paivahinta*DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm)) as summa,  
sum(ty.paivahinta*DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm))*(CAST(vero_pros AS decimal(5,2))/100) as alvin,
sum(ty.paivahinta*DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm))*(CAST(vero_pros AS decimal(5,2))/100+1) as kokonaishinta
from varaus as v
join varausrivi as vr on v.varaus_id = vr.varaus_id
join tuote_yksilo as ty on ty.yksilo_id = vr.yksilo_id
group by v.varaus_id, vero_pros
order by 2 desc

-- Välinetiedot eli tuotteet, joista myös tuoteryhmät (polkupyörät, sähköpolkupyörät, potkulaudat 
--jne.), sekä tuotealiryhmät (polkupyörätyyppi jne)
select tr.tuoteryhma_nimi, tar.nimi as tuoteryhma_nimi, t.merkki, t.malli
from tuote as t 
join tuotealiryhma as tar on tar.tuotealiryhma_id = t.tuotealiryhma_id
join tuoteryhma as tr on tr.tuoteryhma_id = tar.tuoteryhma_id
order by 1,2

--tarkistus varaustaulun varauspvm ei ole myöhemmin kuin palautuspvm(varausrivi)
select v.varaus_id, vr.varausrivi_id, v.varaus_pvm, vr.alku_pvm
from varaus as v join varausrivi as vr on v.varaus_id = vr.varaus_id
where v.varaus_pvm > vr.alku_pvm





