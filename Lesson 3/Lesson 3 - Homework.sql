CREATE TABLE Docent (
	Docentcode		int PRIMARY KEY,
	Naam				nvarchar(52) NOT NULL,
);

CREATE TABLE Rooster (
	LesCode				int,
	Datum					date,
	Tijd					time,
	Lokaal				nvarchar(12),
	AantalStudenten	int,
	Betrokkene			int,
	
CONSTRAINT RoosterKey
	PRIMARY KEY (Lescode, Datum, Tijd, Lokaal),
CONSTRAINT DocentKey
	FOREIGN KEY (Betrokkene)
	REFERENCES Docent(Docentcode)
	ON DELETE CASCADE
);

INSERT INTO Docent
VALUES (002, 'JAPS');

INSERT INTO Rooster (LesCode, Datum, Tijd, Lokaal, Betrokkene)
VALUES ('001', '2017/10/25', '10:35', 'LA102', 1);

UPDATE Rooster
	SET Betrokkene = 002
	WHERE Betrokkene = 001;
	
UPDATE Rooster
SET AantalStudenten = 24;

DELETE FROM Docent
WHERE Naam = 'JAPS';