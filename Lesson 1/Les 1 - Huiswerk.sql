SELECT Titel
FROM Boek;

SELECT Auteur, Titel
FROM Boek;

SELECT DISTINCT Auteur
FROM Boek;

SELECT Titel
FROM Boek
WHERE ISBN < 4000;

SELECT Titel
FROM Boek
WHERE 
	ISBN < 4000 
	OR ISBN > 7000
ORDER BY Titel;

SELECT Titel
FROM Boek
WHERE Auteur = 'Jerzy Kosinski';

SELECT Titel
FROM Boek
WHERE Auteur LIKE '%Reve%';

SELECT Titel, Auteur, ISBN
FROM boek
WHERE  
	(Auteur = 'Harry Mulisch'
	OR Titel = 'De Aanslag')
	AND Editie > 3;