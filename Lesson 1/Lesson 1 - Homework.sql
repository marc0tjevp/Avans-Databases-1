/* Opdracht 1 */

SELECT Titel
FROM Boek;

/* Opdracht 2 */

SELECT Auteur, Titel
FROM Boek;

/* Opdracht 3 */

SELECT DISTINCT Auteur
FROM Boek;

/* Opdracht 4 */

SELECT Titel
FROM Boek
WHERE ISBN < 4000;

/* Opdracht 5 */

SELECT Titel
FROM Boek
WHERE 
	ISBN < 4000 
	OR ISBN > 7000
ORDER BY Titel;

/* Opdracht 6 */

SELECT Titel
FROM Boek
WHERE Auteur = 'Jerzy Kosinski';

/* Opdracht 7 */

SELECT Titel
FROM Boek
WHERE Auteur LIKE '%Reve%';

/* Opdracht 8 */

SELECT Titel, Auteur, ISBN
FROM boek
WHERE  
	(Auteur = 'Harry Mulisch'
	OR Titel = 'De Aanslag')
	AND Editie > 3;