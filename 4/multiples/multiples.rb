def customized_list_of_multiples(multiples_of, size)
  list = Array.new(size) { |index| (index + 2) * multiples_of }
  if block_given?
    yield list
  else
    # need to add this as yield evaluated as nil if no block given
    # and nil returned
    list
  end
end

p customized_list_of_multiples(3, 6)

p customized_list_of_multiples(3, 6) { |arr| arr.map(&:to_s) }

doubler = proc { |el| el * 2 }
p customized_list_of_multiples(3, 6) { |arr| arr.map(&doubler) }

