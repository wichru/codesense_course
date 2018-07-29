DROP TABLE IF EXISTS klienci CASCADE;
DROP TABLE IF EXISTS wypozyczenia;
DROP TABLE IF EXISTS karty_klientow;
DROP TABLE IF EXISTS naprawy;

CREATE TABLE klienci (
  id SERIAL PRIMARY KEY,
  imie VARCHAR,
  nazwisko VARCHAR,
  telefon INTEGER
);


CREATE TABLE wypozyczenia (
  data_wypozyczenia VARCHAR,
  data_oddania VARCHAR,
  czy_oplacono BOOLEAN,
  samochody_id INTEGER,
  klienci_id INTEGER,
  FOREIGN KEY (samochody_id) REFERENCES samochody(id),
  FOREIGN KEY (klienci_id) REFERENCES klienci(id)
);


CREATE TABLE karty_klientow (
  data_otrzymania VARCHAR,
  wysokosc_znizki VARCHAR,
  klienci_id VARCHAR UNIQUE,
  FOREIGN KEY (klienci_id) REFERENCES klienci(id)
);


CREATE TABLE naprawy (
  rodzaj_usterki VARCHAR,
  cena_naprawy VARCHAR,
  data_naprawy VARCHAR,
  samochody_id VARCHAR,
  FOREIGN KEY (samochody_id) REFERENCES samochody(id)
);
