use miniprojekti1_op
go

truncate table tuoteryhma


insert into tuoteryhma values
('moottoriajoneuvot', '15'),
('kevyet ajoneuvot', null),
('extreme', '18')

insert into tuote_aliryhma values
('m�nkij�', 1),
('skootteri', 1),
('s�hk�skuutti', 2),
('s�hk�py�r�', 2),
('s�hk�rullaluistimet', 3),
('s�hk�yksipy�r�inen', 3)


select*from tuoteryhma
select*from tuote_aliryhma