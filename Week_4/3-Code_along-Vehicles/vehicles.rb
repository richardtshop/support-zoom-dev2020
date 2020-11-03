class Vehicle
  attr_accessor :odometer, :gas_used

  def mileage
    @odometer / @gas_used
  end

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  # overriding superclass method
  def steer
    puts "Turn front wheel."
  end
end

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."

truck.odometer = 11432
truck.gas_used = 366
puts "Lifetime MPG:"
puts truck.mileage

puts car.instance_variables

motorcycle = Motorcycle.new
motorcycle.steer
