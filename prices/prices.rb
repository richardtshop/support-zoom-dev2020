def do_something_with_every_item(array, operation)
  if operation == "total" || operation == "refund"
    amount = 0
  end
  index = 0
  while index < array.length
    if operation == "total"
      amount += array[index]
    elsif operation == "refund"
      amount -=array[index]
    elsif operation == "show discounts"
      amount_off = array[index] / 3.0
      puts format("$%.2f", amount_off)
    end
  end
  if operation == "total" || operation == "refund"
    return amount
  end
end

