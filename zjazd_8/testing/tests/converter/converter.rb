require_relative "fetcher"

class Converter
  def convert_to_pln(value_in_currency, currency)
    fetch(currency) * value_in_currency
  end

  def convert_to_currency(value_in_pln, currency)
    value_in_pln / fetch(currency)
  end

  private

  def fetch(currency)
    fetcher.fetch(currency)
  end

  def fetcher
    @fetcher ||= Fetcher.new
  end
end
