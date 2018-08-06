# require 'pg'
# require 'csv'
# require './query_builder'
require './create_csv'

class Execute
  def run
    CreateCSVFile.new.report
  end
end

Execute.new.run
