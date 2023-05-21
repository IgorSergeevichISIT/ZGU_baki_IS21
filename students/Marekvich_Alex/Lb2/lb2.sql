
ALTER TABLE bang
ADD UNIQUE (ID);

ALTER TABLE bang
ALTER vladelec SET DEFAULT 'Sandnes';

ALTER TABLE bang
ALTER vladelec SET not null ;

ALTER TABLE bang
ADD CHECK (id_fiz_user>=1);

create table tablitsaaa
(
	id integer primary key,
	nechto varchar(32) not null,
	nechto2 varchar(32) not null
)

ALTER TABLE "tablitsaaa" ADD FOREIGN KEY ("column") REFERENCES "accounts" ("id");

alter table "tablitsaaa" add column "column1" int not null;
alter table "tablitsaaa" drop column "column"
drop table tablitsaaa