insert into public."depozit"(
	"id","familiya","imya","otchestvo") 
	values (2,'ark0','ark0','ark0')
insert into public."depozit"(
	"id","familiya","imya","otchestvo") 
	values (3,'ark','ark','ark')
insert into public."depozit"(
	"id","familiya","imya","otchestvo") 
	values (4,'ark2','ark2','ark2')


UPDATE depozit SET otchestvo = 'ark0' WHERE otchestvo = 'arkadii';
UPDATE depozit SET familiya = 'ark0' WHERE familiya = 'arkadii';
UPDATE depozit SET imya = 'ark0' WHERE imya = 'arkadii';


delete from depozit where imya = 'ark';

delete from depozit where id<>1 returning *

truncate depozit cascade


insert into fiz_users(
	id,familiya,imya,otchestvo,id_account) 
	values (1,'abc', 'def','hgk',1)

insert into ur_users(
	id,familiya,imya,otchestvo,id_account) 
	values (1,'arkadi', 'arkadiev','arkadievich',1)

insert into accounts(
	id,fio,id_bud,id_dep,id_ras) 
	values (1,'abc def hgk',1,1,1)

insert into bang(
	id,vladelec,id_fiz_user,id_ur_user,id_account) 
	values (1,'arkadi iiiii iiii',1,1,1)