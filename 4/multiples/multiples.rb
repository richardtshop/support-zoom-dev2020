def customized_list_of_multiples(multiples_of, size)
  list = Array.new(size) { |index| (index + 2) * multiples_of }
  yield(list) if block_given?
  # need to add this as yield evaluated as nil if no block given
  # and nil returned
  list
end
