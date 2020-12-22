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
