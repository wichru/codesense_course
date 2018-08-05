require 'pg'

conn = PG.connect( dbname: 'Pan_Maciej' )
conn.exec( "SELECT SUM(city.population), city.district FROM city
JOIN country ON country.code = city.countrycode
JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.language = '#{ARGV}' AND countrylanguage.isofficial = true
GROUP BY city.district
ORDER BY SUM(city.population)")
# do |result|
#   result.each do |row|
#     print row
#   end
# end
