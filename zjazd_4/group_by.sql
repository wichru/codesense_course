SELECT rok_produkcji, COUNT(model) AS liczba_samochodow
FROM samochody
GROUP BY rok_produkcji
HAVING samochody > 10
ORDER BY rok_produkcji;
