# This version creates a hash to store coin values during loop and outputs result
# Same as change2 but removes initializeHash method and adds to hash inline

def calculate_coins(total_cents, coin_values)
  change_coins = {}
  until total_cents < 5
    current_coin = coin_values.find { |_key, value| value <= total_cents }
    current_coin_key, current_coin_value = current_coin
    change_coins[current_coin_key].nil? ? change_coins[current_coin_key] = 1 : change_coins[current_coin_key] += 1
    total_cents -= current_coin_value
  end
  if [3, 4].include?(total_cents)
    change_coins[:nickel].nil? ? change_coins[:nickel] = 1 : change_coins[:nickel] += 1
  end
  change_coins
end

print 'Enter how much change is owed: '

total_dollars = gets.chomp.to_f

while total_dollars <= 0
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
coin_count = change.empty? ? 0 : change.values.reduce(:+)

print coin_count.positive? ? 'You need to dispense ' : 'You don\'t need to dispense change.'

change.each_with_index do |(key, value), index|
  last = index == change.size - 1
  print 'and ' if last && index != 0
  print "#{value} #{key}#{value > 1 ? 's' : ''}"
  print last ? '.' : ', '
end

puts "\nTotal coins: #{coin_count}"
