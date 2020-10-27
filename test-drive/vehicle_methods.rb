def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

def mileage(miles_driven, fuel_used)
  if miles_driven == 0
    return 0.0
  end
  miles_driven / fuel_used
end