require 'pg'

class QueryBuilder
  def initialize(language, is_official)
    @language = language
    @is_official = is_official
  end

  def run
    "SELECT SUM(city.population), city.district FROM city
    JOIN country ON country.code = city.countrycode
    JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
    WHERE countrylanguage.language = '#{@language}' #{official(@is_official)}
    GROUP BY city.district
    ORDER BY SUM(city.population) DESC;"
  end

  private

  def official(param)
    if param == 'is_official'
      'AND countrylanguage.isofficial = true'
    elsif param == 'is_not_official'
      'AND countrylanguage.isofficial = false'
    end
  end
end
