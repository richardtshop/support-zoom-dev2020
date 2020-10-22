def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

def show_discounts(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format("$%.2f", amount_off)
    index += 1;
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
