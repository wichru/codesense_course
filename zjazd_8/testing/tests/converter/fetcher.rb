require "json"
require "net/http"

class Fetcher
  URL = 'http://data.fixer.io/api/latest?access_key=507f7cb4004e2e99efcdc1267904374a'.freeze

  def fetch(currency)
    1 / rates[currency.to_s.upcase]
  end

  private

  def rates
    @rates ||= JSON.parse(Net::HTTP.get(URI(URL)))["rates"]
  end
end
