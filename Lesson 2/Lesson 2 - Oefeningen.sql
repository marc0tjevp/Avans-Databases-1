SELECT PlaatsHfdkntr
FROM Klant
WHERE KlantNaam = 'City Hardware';

SELECT KlantNaam
FROM Klant
WHERE Klantnaam LIKE '%Store%' AND PlaatsHfdkntr <> 'Atlanta';

SELECT KlantNaam, PlaatsHfdkntr
FROM Klant
WHERE VerkoperNr < 200
ORDER BY KlantNaam;

SELECT DISTINCT PlaatsHfdkntr
FROM Klant;

SELECT VerkoperNr
FROM Klant
WHERE PlaatsHfdkntr = 'New York' AND KlantNr > 1500 AND KlantNr < 2250;

SELECT AVG(CommPerct)
FROM Verkoper;

SELECT COUNT(*)
FROM Verkoper
WHERE JaarInDienst = 2001;

SELECT *
FROM Verkoper
WHERE KamerNummer BETWEEN 1250 AND 1300
	AND CommPerct > 15;

SELECT (MAX(CommPerct) - MIN(CommPerct))
FROM Verkoper;