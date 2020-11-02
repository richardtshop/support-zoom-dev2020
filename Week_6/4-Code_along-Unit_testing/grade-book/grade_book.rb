class GradeBook
  attr_reader :grades

  def initialize
    @grades = Hash.new(0)
  end

  def add_grade(student, grade)
    @grades[student.to_sym] = grade.to_f
  end

  def get_grade(student)
    @grades[student.to_sym]
  end

  def letter_grades
    @grades.transform_values { |number| number.to_grade }
  end

  def letter_grade(student)
    grade(student).to_grade
  end
end

class Float
  def to_grade
    number = to_f
    if number < 50
      'F'
    elsif number < 60
      'D'
    elsif number < 70
      'C'
    elsif number < 80
      'B'
    else
      'A'
    end
  end
end

grade_book = GradeBook.new
grade_book.add_grade("christine", 77)
puts "Grade Book:"
puts grade_book.grades
puts "Letter Grades:"
puts grade_book.letter_grades
puts "Grade Book:"
puts grade_book.grades
puts 78.5.to_grade
puts "-----------------------"

grade_book.add_grade("christine", 90) # christine's grade is overwritten
grade_book.add_grade("Christine", 10) # Christine is added as key with value 10
grade_book.add_grade("dave", "20") # => dave's graded added as 0.0
grade_book.add_grade("mike", 660) # => grade entered out of acceptable range perhaps by error. Letter grade returned as A, not D
grade_book.add_grade("mike", -90) # => grade entered out of acceptable range. Letter grade returned F, could be error and meant to be 90 => A

puts grade_book.letter_grades
grade_book.add_grade(1, 90) # => error - integer cannot be converted to a symbol
grade_book.letter_grade("mike") # => error `grade` is not defined
puts 80.to_grade # => NoMethod error `to_grade` not defined on integer