use snowflake_op

--alter table varaus alter column loppusumma decimal(8,2)

declare @lkm int ---muuttuja summan insertoimiseen
set @lkm = 1
while @lkm <= 8002 --- inserttejä tehdään varausrivien määrän verran
begin
	update varaus set loppusumma=(
		select sum(ty.paivahinta*DATEDIFF(dd, vr.alku_pvm, vr.palautettu_pvm)) from varaus as v
		join varausrivi as vr on v.varaus_id = vr.varaus_id
		join tuote_yksilo as ty on ty.yksilo_id = vr.yksilo_id
		where v.varaus_id = @lkm
		group by v.varaus_id
	) where varaus_id = @lkm
	set @lkm += 1
end
go

--poistetaan varaukset, joissa ei ole rivejä
delete from varaus where varaus_id not in (select varaus_id from varausrivi)











