create table postgres.public.loans (
	id UUID default gen_random_uuid() primary key unique,
	pool_id UUID references postgres.public.pools(id),
	loan_id varchar(40) unique,
	borrower_last_name varchar(40),
	borrower_first_name varchar(40),
	property_street_address varchar(40),
	property_city varchar(20),
	property_state varchar(40),
	property_zip varchar(10),
	origination_date date,
	original_principal numeric(20,11),
	unpaid_principal numeric(20,11),
	interest_rate numeric(4,2),
	principal_interest_payment numeric(16,10),
	property_value numeric(20,11)
)