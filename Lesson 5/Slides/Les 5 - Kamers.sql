DROP DATABASE IF EXISTS Les5;
CREATE DATABASE Les5;
GO
USE Les5;

DROP TABLE IF EXISTS Kamer;
CREATE TABLE Kamer (
KamerNr int PRIMARY KEY,
Telefoon nvarchar(12),
Grootte int);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
ProductNr int PRIMARY KEY,
Naam nvarchar(30),
Prijs DECIMAL(10,2));

INSERT INTO Product
VALUES
(16386, 'Hamer', 9.99),
(21765, 'Zaag', 24.99),
(24013, 'Beitel', 7.99),
(26722, 'Schroevendraaier', 4.99),
(35613, 'Hogedrukreiniger', 99.9);

INSERT INTO Kamer
VALUES
(1253, '901-555-4276', 120),
(1227, '901-555-0364', 100),
(1284, '901-555-7335', 120),
(1209, '901-555-3108', 95),
(1385, '901-555-3273', 95);

DROP TABLE IF EXISTS Verkoper;
CREATE TABLE Verkoper (
VerkoperNr int PRIMARY KEY,
VerkoperNaam nvarchar(15),
CommPerct int,
JaarinDienst int,
KamerNummer int

CONSTRAINT VerkoperKamerFK
	FOREIGN KEY (KamerNummer)
	REFERENCES Kamer(KamerNr)
);

INSERT INTO Verkoper
(VerkoperNr, VerkoperNaam, CommPerct, JaarinDienst, KamerNummer) 
VALUES
(137, 'Baker', 10, 1995, 1284),
(186, 'Adams', 15, 2001, 1253),
(204, 'Dickens', 10, 1998, 1209),
(361, 'Carlyle', 20, 2001, 1227),
(482, 'Smith', 10, 1997, NULL);

DROP TABLE IF EXISTS Klant;
CREATE TABLE Klant (
KlantNr int PRIMARY KEY,
KlantNaam nvarchar(25),
VerkoperNr int,
PlaatsHfdkntr nvarchar(25));

INSERT INTO Klant
(KlantNr, KlantNaam, VerkoperNr, PlaatsHfdkntr) 
VALUES
(121, 'Main St. Hardware', 137, 'New York'),
(839, 'Jane’s Stores', 186, 'Chicago'),
(933, 'ABC Home Stores', 137, 'Los Angeles'),
(1047, 'Acme Hardware Store', 137, 'Los Angeles'),
(1525, 'Fred’s Tool Stores', 361, 'Atlanta'),
(1700, 'XYZ Stores', 361, 'Washington'),
(1826, 'City Hardware', 137, 'New York'),
(2198, 'Western hardware', 204, 'New York'),
(2267, 'Central Stores', 186, 'New York');

DROP TABLE IF EXISTS Omzet;
CREATE TABLE Omzet (
VerkoperNr int,
ProductNr int,
Aantal int,

CONSTRAINT OmzetVerkoperFK
	FOREIGN KEY (VerkoperNr)
	REFERENCES Verkoper(VerkoperNr),

CONSTRAINT OmzetProductFK
	FOREIGN KEY (ProductNr)
	REFERENCES Product(ProductNr)

);

INSERT INTO Omzet
(VerkoperNr, ProductNr, Aantal) 
VALUES
(361, 26722, 2738),
(186, 24013, 3071),
(361, 16386, 3729),
(204, 21765, 809),
(204, 26722, 734),
(361, 21765, 3110);



