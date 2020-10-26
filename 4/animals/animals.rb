class Animal
  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank" if value == ''
    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid" if value.negative?

    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

whiskers = Cat.new
whiskers.name = 'Whiskers'
fido = Dog.new
fido.name = 'Fido'
fido.age = 5
polly = Bird.new
polly.name = 'Polly'
polly.age = 2
arnie = Armadillo.new
arnie.name = "Arnie"

polly.report_age
fido.move('yard')
whiskers.talk
arnie.move("Tree")

rex = Dog.new
rex.name = "Rex"
rex.age = 8

puts fido.to_s, rex.to_s
