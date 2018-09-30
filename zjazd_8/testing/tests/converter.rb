class Converter
  attr_reader :currencies

  def initialize(currencies)
    @currencies = currencies
  end

  def convert_to_pln(value_in_currency, currency)
    currencies[currency] * value_in_currency
  end

  def convert_to_currency(value_in_pln, currency)
    value_in_pln / currencies[currency] if currencies[currency]
  end

  def add_currency(currency, value_in_chf)
    currencies[currency] = value_in_chf
  end
end
