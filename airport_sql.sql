DROP TABLE AirportSt
CREATE TABLE AirportSt(
	id int PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
	city varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    iata varchar(255),
    icao varchar(255),
	latitude float NOT NULL,
	longitude float NOT NULL,
	altitude int NOT NULL,
	timezone float,
	dst varchar(255),
	tz_database_timezone varchar(255),
	type varchar(255),
	source varchar(255)
);
