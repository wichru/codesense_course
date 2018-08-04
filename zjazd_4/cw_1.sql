SELECT samochody.* FROM samochody
LEFT JOIN wypozyczenia
ON samochody.id = wypozyczenia.samochod_id
WHERE wypozyczenia.samochod_id IS NULL;
