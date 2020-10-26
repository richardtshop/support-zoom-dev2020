# This version creates a hash to store coin values during loop and outputs result

def calculate_coins(total_cents, coin_values)
  change_coins = {}
  until total_cents < 5
    current_coin = coin_values.find { |_key, value| value <= total_cents }
    current_coin_key, current_coin_value = current_coin

    if change_coins[current_coin_key].nil?
      change_coins[current_coin_key] = 1
    else
      change_coins[current_coin_key] += 1
    end
    
    total_cents -= current_coin_value
  end

  change_coins[:nickel] += 1 if [3, 4].include?(total_cents) # Nickel rounding
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

total_cents = (total_dollars * 100).to_i

change = calculate_coins(total_cents, coin_values)

coin_count = change.values.reduce(:+)
print 'You need to dispense '

change.each_with_index do |(key, value), index| 
  last = index == change.size - 1
  print 'and ' if last
  print "#{value} #{key}#{value > 1 ? 's' : ''}"
  print last ? '.' : ', '
end

puts "\nTotal coins: #{coin_count}"
