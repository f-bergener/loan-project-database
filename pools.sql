create table postgres.public.pools (
	id UUID default gen_random_uuid() primary key unique,
	name varchar(40)
)

insert into postgres.public.pools (name) values ('Riverfall');
insert into public.pools (name) values ('Mountain');