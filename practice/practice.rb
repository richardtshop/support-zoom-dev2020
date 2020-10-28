class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(' ').each{ |word| yield word}
  end
end

splitter = WordSplitter.new
splitter.string = 'How do you dog?'

p splitter.find_all { |word| word.include?('d')}
p splitter.reject { |word| word.include?('d')}
p splitter.map { |word| word.reverse }
p splitter.map(&:reverse)