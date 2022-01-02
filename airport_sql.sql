DROP TABLE AirportSt
CREATE TABLE AirportSt(
	id int,
    name varchar(255),
	city varchar(255),
    country varchar(255),
    iata varchar(255),
    icao varchar(255),
	latitude float,
	longitude float,
	altitude int,
	timezone float,
	dst varchar(255),
	tz_database_timezone varchar(255),
	type varchar(255),
	source varchar(255)
);
