SELECT COUNT(marka) FROM samochody
JOIN wypozyczenia ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Skoda';
