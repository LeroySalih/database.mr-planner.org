--- =================
--- Add the join_code colum to the table
--- =================

alter table profiles add column email text default 'Not Set';
alter table profiles add column mother_email text default 'Not Set';
alter table profiles add column father_email text default 'Not Set';


ALTER TABLE profiles ADD CONSTRAINT unique_profile_email UNIQUE (email);
