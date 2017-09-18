CREATE TABLE Huis (
Straat		 	nvarchar(56) NOT NULL,
Huisnummer	 	nvarchar(6),
Postcode		 	nchar(6),
Plaats		 	nvarchar(64) NOT NULL,
Bouwjaar		 	int NOT NULL CHECK (Bouwjaar > 1000 AND Bouwjaar <= YEAR(GETDATE()),
Vraagprijs	 	decimal(14,2) CHECK (Vraagprijs >= 0),
AantalKamers	int DEFAULT 4 CHECK (AantalKamers > 0),

CONSTRAINT PrimaryKey
	PRIMARY KEY (Huisnummer, Postcode)
);