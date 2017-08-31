/*
SELECT *
FROM [dbo].[Sporter];

SELECT Bedrag
FROM [dbo].[Sporter]
WHERE ID = 94;

SELECT Naam, Leeftijd
FROM [dbo].[Sporter]
WHERE Sport = 'Tennis';

SELECT Club
FROM [dbo].[Sporter]
GROUP BY Club;

SELECT ID
FROM [dbo].[Sporter]
WHERE Naam = 'Els';

SELECT *
FROM [dbo].[Sporter]
WHERE Naam = 'Ab';

SELECT Club
FROM [dbo].[Sporter]
WHERE Bedrag <= 25
GROUP BY Club;

SELECT Naam
FROM Sporter
WHERE Sport = 'Hockey' AND Sport = 'Tennis';

SELECT Sport
FROM Sporter
WHERE Leeftijd < 21 OR Leeftijd > 25;

SELECT *
FROM Sporter
WHERE Sport = 'Hockey' OR Sport = 'Golf' AND Bedrag < 35;

SELECT ID
FROM Sporter
WHERE Sport IN ('Golf', 'Tennis', 'Voetbal');

SELECT Naam
FROM Sporter
WHERE Naam Like '%e%'
ORDER BY Naam;

SELECT DISTINCT Club
FROM Sporter
WHERE ID < 250 OR Leeftijd > 21;