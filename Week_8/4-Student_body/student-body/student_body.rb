class StudentBody
  include Enumerable

  attr_reader :classes

  def initialize(classes:)
    @classes = classes
  end

  def each
    @classes.each_pair { |_key, students| students.each { |student| yield student } }
  end
end

school = StudentBody.new(
  classes: {
    class1: ["William", "Pavel", "Jean Luc", "Mr"],
    class2: ["James", "Leonard", "Montgomery", "Tasha"],
    class3: ["Nyota", "Hikaru", "Worf", "Geordie"],
    class4: ["Dianna", "Beverly", "Wesley", "Miles"],
  }
)

school.each { |student| puts student }
