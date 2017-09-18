USE master;
IF EXISTS(SELECT * FROM sys.databases WHERE name='Lezersvreugd')
DROP DATABASE Lezersvreugd;

CREATE DATABASE Lezersvreugd;
use Lezersvreugd;

CREATE TABLE Boek (
	ISBN				varchar(13),
	Titel				varchar(64) NOT NULL,
	Schrijver		varchar(64) NOT NULL,
	Editie			int,
	
	CONSTRAINT BoekPrimaryKey
		PRIMARY KEY (ISBN),
);

CREATE TABLE DVD (
	ISBN				varchar(13),
	Titel				varchar(128) NOT NULL,
	Regisseur		varchar(128) NOT NULL,
	Label				varchar(128),
	
	CONSTRAINT DVDPrimaryKey
		PRIMARY KEY (ISBN)
);

CREATE TABLE Lid (
	Lidnummer			int IDENTITY(1,1),
	Naam					varchar(128) NOT NULL,
	Straat				varchar(128) NOT NULL,
	Huisnummer			varchar(6) NOT NULL,
	Plaatsnaam			varchar(64) NOT NULL,
	
	CONSTRAINT LidPrimaryKey
		PRIMARY KEY (Lidnummer)
);

CREATE TABLE Uitlening (
	UitleningID			int IDENTITY(1,1),
	ISBN					varchar(13),
	Lidnummer			int,
	UitleenDatum		date NOT NULL,
	TeruggaveDatum		date NOT NULL,
	
	CONSTRAINT UitleningPrimaryKey
		PRIMARY KEY (UitleningID),
	CONSTRAINT ISBN_Boek
		FOREIGN KEY (ISBN)
		REFERENCES Boek(ISBN)
		ON DELETE SET NULL,
	CONSTRAINT LidNummer
		FOREIGN KEY (Lidnummer)
		REFERENCES Lid(Lidnummer)
		ON DELETE SET NULL
);

CREATE TABLE Reservatie (
	ReservatieID			int IDENTITY(1,1),
	ISBN						varchar(13),
	LidNummer				int,
	TeruggaveDatum			date,
	
	CONSTRAINT ReservatiePrimaryKey
		PRIMARY KEY (ReservatieID),
	CONSTRAINT ISBN_Reservatie
		FOREIGN KEY (ISBN)
		REFERENCES Boek(ISBN)
		ON DELETE SET NULL,
	CONSTRAINT Lidnummer_Reservatie
		FOREIGN KEY (Lidnummer)
		REFERENCES Lid(Lidnummer)
		ON DELETE SET NULL,
);

INSERT INTO Lid (Naam, Straat, Huisnummer, Plaatsnaam)
VALUES ('Marco van Poortvliet', 'Ten Ankerweg', '14', 'Tholen');
INSERT INTO Lid (Naam, Straat, Huisnummer, Plaatsnaam)
VALUES ('Lisa Tyem', 'Zuidzijde Haven', '66', 'Bergen op Zoom');
INSERT INTO Lid (Naam, Straat, Huisnummer, Plaatsnaam)
VALUES ('Bas van Driel', 'LangeSlungelweg', '69', 'Nep-België');

INSERT INTO Boek
VALUES('9789024576869', 'Victoria', 'Daisy Goodwin', 2017);
INSERT INTO Boek
VALUES('9789045214832', 'Nodig', 'Joelle Charbonneau', 2016);
INSERT INTO Boek
VALUES('9780007523221', 'The Silmarillion', 'J.R.R. Tolkien', 2013);
INSERT INTO Boek
VALUES('9781539930723', 'Metro 2035', 'Dmitry Glukhovsky', 1999);
INSERT INTO Boek
VALUES('9780241970379', 'Circle', 'Dave Eggers', 2014);

ALTER TABLE Lid
ADD Geboortedatum date;

INSERT INTO "Lezersvreugd"."dbo"."Uitlening" ("ISBN", "Lidnummer", "UitleenDatum", "TeruggaveDatum")
VALUES ('9789045214832', '1', '2017-09-04', '2017-09-11');
INSERT INTO "Lezersvreugd"."dbo"."Uitlening" ("ISBN", "Lidnummer", "UitleenDatum", "TeruggaveDatum")
VALUES ('9780007523221', '1', '2017-09-18', '2017-10-01');

INSERT INTO "Lezersvreugd"."dbo"."Reservatie" ("ISBN", "LidNummer", "TeruggaveDatum")
VALUES ('9781539930723', '3', '2017-10-09');
INSERT INTO "Lezersvreugd"."dbo"."Reservatie" ("ISBN", "LidNummer", "TeruggaveDatum")
VALUES ('9781539930723', '2', '2017-10-16');

SELECT * FROM Reservatie;

