require 'csv'

class Create_CSV_File
  def report
  conn = PG.connect(dbname: 'Pan_Maciej')
  conn.exec(@query) do |result|
    CSV.open("sth.csv", "wb") do |file|
      file << ["district", "sum"]
        result.each do |row|
          file << [row["district"], row["sum"]]
        end
      end
    end
  end
end
