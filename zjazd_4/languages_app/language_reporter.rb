require 'pg'
require 'csv'
require './query_builder'

class Execute

  def initialize

  end

  def run
    QueryBilder.new(ARGV[0], ARGV[1]).run
  end
end

puts Execute.new.run
