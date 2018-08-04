SELECT klienci.* FROM klienci
LEFT JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
LEFT JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka <> 'Skoda';
