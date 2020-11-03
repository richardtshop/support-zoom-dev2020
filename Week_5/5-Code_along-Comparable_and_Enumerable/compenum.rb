####
# Comparable module

class Steak
  include Comparable

  GRADE_SCORES = { "Prime" => 3, "Choice" => 2, "Select" => 1 }

  attr_accessor :grade

  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
      -1
    elsif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      0
    else
      1
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

####
# Enumerable module code

class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(' ').each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "how do you do"

capitalize_last = proc do |word|
  word_array = word.split("")
  word_array.last.upcase!
  word = word_array.join("")
end

p splitter.find_all { |word| word.include?('d') }
p splitter.reject { |word| word.include?('d') }
p splitter.map { |word| word.reverse }
p splitter.map(&:capitalize)
p splitter.map(&capitalize_last)
p splitter.map(&:reverse)
p splitter.any? { |word| word.include?("e") }
p splitter.count
p splitter.first
p splitter.sort
