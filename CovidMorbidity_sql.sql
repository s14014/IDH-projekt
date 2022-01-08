DROP TABLE CovidMorbiditySt;
CREATE TABLE CovidMorbiditySt(
	date_id int  NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Date_reported date NOT NULL,
	Country_code varchar(2) NOT NULL,
	Country varchar(100) NOT NULL,
	WHO_region varchar(100) NOT NULL,
	New_cases bigint NOT NULL,
	Cumulative_cases bigint NOT NULL,
	New_deaths bigint NOT NULL,
	Cumulative_deaths bigint NOT NULL,
);
