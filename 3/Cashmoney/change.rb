def calculate_coins(total_cents, coin_values, change_coins)
  until total_cents < 5
    current_coin = coin_values.find { |_key, value| value <= total_cents }
    change_coins[current_coin.first] += 1
    total_cents -= current_coin[1]
  end
  # Nickel rounding
  change_coins[:nickel] += 1 if [3, 4].include?(total_cents)

  change_coins
end

print 'Enter how much change is owed: '

total_dollars = gets.chomp.to_f

while total_dollars <= 0.02
  print 'Invalid total, please enter a valid total: '
  total_dollars = gets.chomp.to_f
end

coin_values = {
  toonie: 200,
  loonie: 100,
  quarter: 25,
  dime: 10,
  nickel: 5
}

change_coins = {
  toonie: 0,
  loonie: 0,
  quarter: 0,
  dime: 0,
  nickel: 0
}

total_cents = (total_dollars * 100).to_i

change = calculate_coins(total_cents, coin_values, change_coins)
coin_count = change.values.reduce(:+)
print 'You need to dispense '

change.each { |key, value| print "#{value} #{key}#{value < 1 ? 's' : ''}, " if value.positive? }

puts '.'
puts "Total coins: #{coin_count}"
