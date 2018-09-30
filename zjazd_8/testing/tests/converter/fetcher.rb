require "json"
require "net/http"

class Fetcher
  URL = 'https://api.fixer.io/latest?base=pln'.freeze

  def fetch(currency)
    1 / rates[currency.to_s.upcase]
  end

  private

  def rates
    @rates ||= JSON.parse(Net::HTTP.get(URI(URL)))["rates"]
  end
end
