/* 5.1 */

SELECT Verkoper.VerkoperNaam, Kamer.Grootte
FROM Verkoper
LEFT JOIN Kamer
ON Verkoper.KamerNummer = Kamer.Kamernr
WHERE VerkoperNaam = 'Adams';

SELECT Verkoper.VerkoperNaam
FROM Verkoper
LEFT JOIN Klant
ON Verkoper.VerkoperNr = Klant.VerkoperNr
WHERE Klant.KlantNr = 1047;

SELECT Verkoper.VerkoperNaam
FROM Verkoper
JOIN Omzet
ON Omzet.VerkoperNr = Verkoper.VerkoperNr
WHERE Omzet.Aantal > 5000;

SELECT AVG(Kamer.Grootte) AS Average
FROM Kamer, Verkoper
Where Kamer.KamerNr IN (
	SELECT Verkoper.KamerNummer
	FROM Verkoper, Klant
	WHERE Verkoper.VerkoperNr IN (
		SELECT Klant.VerkoperNr
		FROM Klant
		WHERE Klant.PlaatsHfdkntr = 'New York' OR Klant.PlaatsHfdkntr = 'Atlanta'));
		
/* 5.2 */

SELECT Auteur
FROM Boek
WHERE ISBN IN(
	SELECT ISBN
   FROM Exemplaar
   WHERE ExemplaarID IN(
   	SELECT ExemplaarID
      FROM Reservatie));
                

CREATE VIEW Boek_lid AS
SELECT *
FROM Boek, Lid;

CREATE VIEW Gereserveerd AS
SELECT Boek.ISBN, boek.Titel
FROM boek, Reservatie
Where Boek.ISBN = Reservatie.ISBN;