CREATE TABLE cases (
id SERIAL,
case_reported_date timestamp NOT NULL,
new_cases integer NOT NULL,
total_cases integer NOT NULL,
county_id integer NOT NULL,
created_at timestamp NULL DEFAULT NULL,
PRIMARY KEY (id, case_reported_date),
FOREIGN KEY (county_id) REFERENCES county(id),
);

CREATE TABLE deaths (
id SERIAL,
death_reported_date timestamp NOT NULL,
new_deaths integer NOT NULL,
total_deaths integer NOT NULL,
county_id integer NOT NULL,
created_at timestamp NULL DEFAULT NULL,
PRIMARY KEY (id, death_reported_date),
FOREIGN KEY (county_id) REFERENCES county(id),
);

CREATE TABLE risk (
id SERIAL,
risk_date timestamp NOT NULL,
county_id integer NOT NULL,
description varchar(25),
PRIMARY KEY (id, risk_date),
FOREIGN KEY (county_id) REFERENCES county(id)
);

CREATE TABLE county (
id SERIAL PRIMARY KEY,
county varchar(255) NOT NULL
);