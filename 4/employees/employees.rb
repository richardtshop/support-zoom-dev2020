class Employee
  attr_reader :name

  attr_writer :name

  def initialize(name)
    raise "Name can't be blank" if name == ""
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
    raise "A salary of #{salary} isn't valid!" if salary.negative?
    self.salary = salary
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
  # Factory methods
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 30)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.05, 30)
  end

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    raise "An hourly wage of #{hourly_wage} isn't valid!" if hourly_wage.negative?
    self.salary = salary
  end

  def hours_per_week=(hours_per_week)
    raise "Hours a week of #{hours_per_week} isn't valid!" if hours_per_week.negative?
    self.hours_per_week = hours_per_week
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

ivan = HourlyEmployee.cashier("Ivan Stokes")
edwin = HourlyEmployee.janitor("Edwin Bugress")
angela = HourlyEmployee.security_guard("Angela Matthews")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub
