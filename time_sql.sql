DROP TABLE TimeSt;
CREATE TABLE TimeSt(
   Date date NOT NULL PRIMARY KEY,

   DayNumber int NOT NULL,

   Day varchar(10) NOT NULL,

   MonthNumber int NOT NULL,

   Month varchar(10) NOT NULL, 

   Year int NOT NULL,

   Qurter int NOT NULL,

   Season varchar(7) NOT NULL,
	
);
