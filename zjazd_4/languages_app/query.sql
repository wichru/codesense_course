SELECT SUM(city.population), city.district
FROM city
JOIN country ON country.code = city.countrycode
JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.language = 'Polish' AND countrylanguage.isofficial = true
GROUP BY city.district
ORDER BY SUM(city.population);
