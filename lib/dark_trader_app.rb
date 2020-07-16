require_relative '../lib/dark_trader.rb'

data = get_data
currency_and_price = []
data.each do |row|
    print "."
    currency_and_price << currency_and_price(row)
end

puts
puts currency_and_price
