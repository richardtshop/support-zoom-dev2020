class Employee
  attr_reader :name

  def name=(name)
    # Code to validate and set @name
    @name = name
  end

  def initialize(name)
    self.name = name
  end
  
  def print_name
    puts "Name: #{name}"
  end
  
  def print_pay_stub(pay_for_period)
    print_name
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
  
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    # Code to validate and set @salary
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    super((salary / 365.0) * 14)
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    # Code to validated and set @hourly_wage
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    # Code to validated and set @hours_per_week
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    super(hourly_wage * hours_per_week * 2)
  end
end

salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("Jane Smith", 14.97, 30)
hourly_employee.print_pay_stub
