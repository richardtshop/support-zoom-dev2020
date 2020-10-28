# Comparable module

class Steak
  
  include Comparable
  
  GRADE_SCORES = { "Prime" => 3, "Choice" => 2, "Select" => 1 }
  
  attr_accessor :grade
  
  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
    # Alternate method that does the same as the above
    # GRADE_SCORES[grade] <=> GRADE_SCORES[other.grade]
  end
end

prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

# puts "prime > choice: #{prime > choice}"
# puts "prime < select: #{prime < select}"
# puts "select == select: #{select == select}"
# puts "select <= select: #{select <= select}"
# puts "select >= choice: #{select >= choice}"
# print "choice.between?(select, prime):"
# puts choice.between?(select, prime)

# Enumerable module code

class WordSplitter
  include Enumerable # need to include to be able to user Enumerable methods on objects of this class

  attr_accessor :string

  def each
    string.split(' ').each do  |word| 
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end