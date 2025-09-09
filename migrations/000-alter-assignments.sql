begin;

alter table assignments add column IF NOT exists from_date timestamp default now();
alter table assignments add column IF NOT exists to_date timestamp default now();

commit;