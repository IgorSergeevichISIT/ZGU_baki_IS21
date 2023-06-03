select * from depozit where id > 3
select * from depozit where id = 3
select * from depozit where id < 3
select * from depozit where id between 3 and 6

select avg(bic) as Bic from depozit;
select sum(bic) as Bic from depozit;
select count(bic) as Bic from depozit;
select min(bic) as Bic from depozit;
select max(bic) as Bic from depozit;

select * from rasschet,depozit;

select * from depozit where familiya like 'ark1'

select familiya,imya from depozit group by id

select familiya,imya from depozit order by id desc

SELECT * FROM depozit LEFT JOIN rasschet ON depozit.imya = rasschet.imya;
SELECT * FROM depozit JOIN rasschet ON depozit.imya = rasschet.imya;
SELECT * FROM depozit right JOIN rasschet ON depozit.imya = rasschet.imya; 
SELECT * FROM depozit INNER JOIN rasschet ON depozit.imya = rasschet.imya;
SELECT * FROM depozit FULL JOIN rasschet ON depozit.imya = rasschet.imya;

select imya,familiya from depozit union select imya,familiya from rasschet
SELECT imya,familiya FROM rasschet INTERSECT SELECT imya,familiya FROM depozit
sELECT imya FROM depozit EXCEPT SELECT imya FROM rasschet;

select bic from depozit where bic > (select avg(bic) from depozit)
select bic from depozit where bic < (select count(bic) from depozit)
select (select imya from rasschet where id=1) as dcsdsdd from depozit