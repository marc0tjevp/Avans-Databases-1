
DROP DATABASE IF EXISTS Sport;
CREATE DATABASE Sport;
USE Sport;
DROP TABLE IF EXISTS Sporter;
CREATE TABLE Sporter (
  ID int,
  Naam varchar(20),
  Leeftijd int,
  Sport varchar(20),
  Club varchar(10),
  Bedrag int
) 
INSERT INTO Sporter
(ID, Naam, Leeftijd, Sport, Club, Bedrag) 
VALUES
(254, 'Carl',  21, 'Voetbal', 'LFC',   25),
(426, 'Anna',  23, 'Voetbal', 'LFC',   25),
(312, 'John',  21, 'Hockey',  'SHCL',  30),
(619, 'Sahid', 19, 'Voetbal', 'VVL',   20),
(419, 'Merel', 22, 'Tennis',  'TCL',   20),
( 94, 'Kim',   20, 'Voetbal', 'VVL',   20),
(476, 'Ab',    26, 'Hockey',  'SHCL',  30),
(426, 'Anna',  23, 'Hockey',  'SHCL',  30),
(120, 'Frank', 20, 'Hockey',  'SHCL',  30),
(828, 'Loes',  25, 'Golf',    'Bosch', 45),
(476, 'Ab',    26, 'Tennis',  'TCL',   20);
