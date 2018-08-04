DROP TABLE IF EXISTS osoby;
DROP TABLE IF EXISTS adresy;

CREATE TABLE osoby (
imie VARCHAR,
nazwisko VARCHAR,
pesel INTEGER);

CREATE TABLE adresy (
pesel INTEGER,
ulica VARCHAR,
nr INTEGER);

INSERT INTO osoby (imie, nazwisko, pesel) VALUES
('Jan', 'Andrzejewski', 34523),
('Jan', 'Wojtkiewicz', 12323),
('Wojciech', 'Kowalski', 555);

INSERT INTO adresy (pesel, ulica, nr) VALUES
(12323, 'Długa', 17),
(555, 'Wiśniowa', 15),
(11123, 'Mickiewicza', 1);
