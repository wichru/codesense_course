SELECT klienci.* FROM klienci
JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Ford';
