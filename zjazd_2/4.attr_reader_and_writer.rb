class Wallet
  # attr_writer :balance
  # attr_reader :balance
# To jest to samo co wyżej
  attr_accessor :balance, :owner
end

wallet = Wallet.new
wallet.balance = 120
puts wallet.balance
