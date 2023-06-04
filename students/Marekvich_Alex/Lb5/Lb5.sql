create view VIEWWW as select imya,familiya from depozit order by id;
create materialized view allnames as select imya from depozit union select imya from rasschet;

create view familiya_otchestvo as select familiya, otchestvo from depozit;
update familiya_otchestvo set familiya = 'omaygot' where familiya = 'ark0';

delete from depozit where imya = 'ark1';

create view DEPOZITORS as select * from depozit;
update DEPOZITORS set familiya = 'ark100' where familiya = 'ark2';
insert into DEPOZITORS values (10,'ark10','ark10','ark10',1,2,3);
delete from DEPOZITORS where imya='ark7';

refresh materialized view allnames;

create index Indexname on depozit(imya);
create index fam_im on depozit(imya,familiya) where id >=2;
create unique index Materialind on allnames(imya);

alter view VIEWWW rename to VIEW1;

drop view VIEW1;
drop index Materialind;