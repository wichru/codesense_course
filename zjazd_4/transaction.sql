BEGIN TRANSACTION;

UPDATE samochody SET pojemnosc_silnika = 3.0
WHERE model = 'E87';

UPDATE samochody SET pojemnosc_silnika = 2.5
WHERE marka = Opel;

COMMIT;
