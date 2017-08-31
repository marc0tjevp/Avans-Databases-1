USE master;
DROP DATABASE IF EXISTS Bibliotheek;
CREATE DATABASE Bibliotheek;

USE Bibliotheek;
CREATE TABLE  Boek  (
   ISBN  int NOT NULL PRIMARY KEY,
   Titel  varchar(64) NOT NULL,
   Auteur  varchar(32) NOT NULL,
   Editie  int NOT NULL
) ;

INSERT INTO  Boek  ( ISBN ,  Titel ,  Auteur ,  Editie ) VALUES
(1011, 'De avonden', 'Gerard van het Reve', 9),
(1014, 'Het boek van violet en dood', 'Gerard Reve', 9),
(1021, 'Ik heb nooit iets gelezen', 'Karel van het Reve', 2),
(1111, 'Het leven is vurrukkulluk', 'Remco Campert', 1),
(2222, 'De Ontdekking van de Hemel', 'Harry Mulisch', 5),
(2223, 'De Aanslag', 'Harry Mulisch', 8),
(3333, 'De Aanslag', 'Belastingdienst', 1),
(4001, 'De geverfde vogel', 'Jerzy Kosinski', 2),
(4003, 'Cockpit', 'Jerzy Kosinski', 1),
(4005, 'Aanwezig', 'Jerzy Kosinski', 4),
(8000, 'Ik, Jan Cremer', 'Jan Cremer', 22),
(8888, 'Ik, Jan Klaassen', 'Herman Finkers', 22);

CREATE TABLE Exemplaar (
  ExemplaarID int NOT NULL  PRIMARY KEY,
  Uitleenperiode int NOT NULL,
  ISBN int NOT NULL FOREIGN KEY REFERENCES Boek(ISBN)
)

INSERT INTO Exemplaar (ExemplaarID, Uitleenperiode, ISBN) VALUES
(10001, 5, 2222),
(10002, 21, 1111);

CREATE TABLE Lid (
  LidNr int NOT NULL PRIMARY KEY,
  Voornaam varchar(32) NOT NULL,
  Achternaam varchar(32) NOT NULL,
  Straat varchar(32) NOT NULL,
  Huisnummer varchar(4) NOT NULL,
  Stad varchar(32) NOT NULL,
  Telefoonnummer varchar(16) NOT NULL,
  Email varchar(32) NOT NULL,
  Boete decimal(10,2) NOT NULL
);

INSERT INTO Lid (LidNr, Voornaam, Achternaam, Straat, Huisnummer, Stad, Telefoonnummer, Email, Boete) VALUES
(1000, 'Pascal', 'van Gastel', 'Lovensdijkstraat', '61', 'Breda', '0765238754', 'ppth.vangastel@avans.nl', 0),
(1001, 'Erco', 'Argante', 'Hogeschoollaan', '1', 'Breda', '0765231234', 'e.argante@avans.nl', 0),
(1002, 'Marice', 'Bastiaensen', 'Lovensdijkstraat', '63', 'Breda', '0765236789', 'mmcm.bastiaensen@avans.nl', 5);

CREATE TABLE Uitlening (
  DatumTerugave date NOT NULL,
  LidNr int NOT NULL FOREIGN KEY REFERENCES Lid(LidNr),
  ExemplaarID int NOT NULL FOREIGN KEY REFERENCES Exemplaar(ExemplaarID),
  PRIMARY KEY(DatumTerugave, LidNr, ExemplaarID)
)

INSERT INTO Uitlening (DatumTerugave, LidNr, ExemplaarID) VALUES ('2013-10-16', 1000, 10001);
INSERT INTO Uitlening (DatumTerugave, LidNr, ExemplaarID) VALUES ('2013-10-18', 1002, 10002);

CREATE TABLE Reservatie (
  ReservatieDatum date NOT NULL,
  LidNr int NOT NULL FOREIGN KEY REFERENCES Lid(LidNr),
  ISBN int NOT NULL FOREIGN KEY REFERENCES Boek(ISBN)
) 

INSERT INTO Reservatie (ReservatieDatum, LidNr, ISBN) VALUES ('2013-09-29', 1001, 1111);
INSERT INTO Reservatie (ReservatieDatum, LidNr, ISBN) VALUES ('2013-10-05', 1002, 2222);
INSERT INTO Reservatie (ReservatieDatum, LidNr, ISBN) VALUES ('2013-09-29', 1001, 4005);