UPDATE samochody
SET rok_produkcji = 2005
WHERE marka = 'Volkswagen' AND model = 'Golf IV'



UPDATE samochody
SET jest_sprawne = false
WHERE marka = 'Skoda' AND model = 'Fabia' AND rok_produkcji = false
