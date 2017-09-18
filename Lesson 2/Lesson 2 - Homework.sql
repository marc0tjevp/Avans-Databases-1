SELECT Auteur, COUNT(Titel) AS CountTitle
FROM Boek
Group By Auteur;

SELECT COUNT(ISBN) AS CountISBN
FROM Boek
WHERE ISBN > 1012;

SELECT Auteur, COUNT(Titel) AS CountTitle
FROM Boek
GROUP BY Auteur
HAVING COUNT(Titel) >= 2;

SELECT Auteur, MAX(editie) AS MaxEdition, MIN(editie) AS MinEdition
FROM Boek
GROUP BY Auteur;

SELECT Titel, AVG(editie) AS AverageEditions
FROM Boek
WHERE Titel LIKE 'D%'
GROUP BY Titel;

SELECT SUM(editie) AS SumEditions
FROM Boek
WHERE Auteur IN('Harry Mulisch', 'Jan Cremer');

SELECT YEAR(DatumTerugave) AS Year, MONTH(DatumTerugave) AS Month, DAY(DatumTerugave) AS Day
FROM Uitlening;

SELECT CONVERT(date, DatumTerugave) AS DateReturn, CONVERT(date, CURRENT_TIMESTAMP) AS DateToday, DATEDIFF(dd, DatumTerugave, GETDATE()) AS DaysPassed
FROM Uitlening;