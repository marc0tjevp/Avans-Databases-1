/* Opgave 1 */

SELECT DISTINCT Boek.Schrijver
FROM Boek
INNER JOIN Uitlening
ON Boek.ISBN = Uitlening.ISBN
ORDER BY Boek.Schrijver DESC;

/* Opgave 2 */

SELECT Lid.Naam, Boek.Titel
FROM Reservatie
INNER JOIN Lid
ON Reservatie.LidNummer = Lid.Lidnummer
INNER JOIN Boek
ON Boek.ISBN = Reservatie.ISBN;

/* Opgave 3 */

SELECT Lid.Telefoonnummer
FROM Lid
INNER JOIN Reservatie
ON Lid.Lidnummer = Reservatie.Lidnummer
INNER JOIN Uitlening
ON Lid.Lidnummer = Uitlening.Lidnummer;

/* Opgave 4 */

SELECT Boek.Titel
FROM Boek
INNER JOIN Reservatie
ON Boek.ISBN = Reservatie.ISBN
INNER JOIN Uitlening
ON Boek.ISBN = Uitlening.ISBN;

/* Opgave 5 */

SELECT Lid.Naam
FROM Lid
INNER JOIN Uitlening
ON Lid.Lidnummer = Uitlening.Lidnummer
WHERE Uitlening.UitleenDatum = CURRENT_TIMESTAMP;

/* Opgave 6 */

SELECT Lid.Naam, COUNT(Uitlening.ISBN) AS Aantal
FROM Lid
FULL OUTER JOIN Uitlening
ON Lid.Lidnummer = Uitlening.Lidnummer
GROUP BY Lid.Naam;

/* Opgave 7 */
SELECT AVG(Huisnummer)
FROM Lid;
