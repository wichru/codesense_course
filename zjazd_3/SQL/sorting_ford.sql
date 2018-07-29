SELECT *
FROM samochody
WHERE marka = 'Ford'
ORDER BY model ASC;


SELECT *
FROM samochody
WHERE marka = 'Skoda' AND model = 'Fabia'
ORDER BY pojemnosc_silnika ;

SELECT *
FROM samochody
WHERE pojemnosc_silnika > 1.6 AND jest_sprawne = true
ORDER BY rok_produkcji, marka, model DESC;

SELECT *
FROM samochody
WHERE marka = 'Ford' AND model LIKE 'F%';
