use miniprojekti1_op
go

truncate table tuoteryhma


insert into tuoteryhma values
('moottoriajoneuvot', '15'),
('kevyet ajoneuvot', null),
('extreme', '18')

insert into tuote_aliryhma values
('mönkijä', 1),
('skootteri', 1),
('sähköskuutti', 2),
('sähköpyörä', 2),
('sähkörullaluistimet', 3),
('sähköyksipyöräinen', 3)


select*from tuoteryhma
select*from tuote_aliryhma