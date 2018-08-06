require 'pg'
require 'csv'
require './query_builder'

class CreateCSVFile
  def initialize
    @path = QueryBuilder.new(ARGV[0], ARGV[1]).run
  end

  def report
    conn = PG.connect(dbname: 'Pan_Maciej')
    conn.exec(@path) do |result|
      CSV.open("languages.csv", "wb") do |file|
        file << %w[district sum]
        result.each do |row|
          file << [row['district'], row['sum']]
        end
      end
    end
  end
end
