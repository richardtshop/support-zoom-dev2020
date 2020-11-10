class Textogram
  attr_reader :histogram, :text

  def initialize(text:)
    return puts "Text cannot be an empty string!" if text.empty?
    @text = text
    @histogram = {}
  end

  def create_histogram(case_sensitive: true, special_characters: true, whitespace: true, strip_whitespace: true)
    histogram_text = text.clone
    histogram_text.downcase! unless case_sensitive
    histogram_text.gsub!(/\s+/, '') unless whitespace
    histogram_text.gsub!(/[^a-zA-Z ]/, '') unless special_characters
    histogram_text.strip if strip_whitespace
    histogram_text_array = histogram_text
      .split('')
      .sort
    @histogram = array_to_histogram(histogram_text_array)
  end

  def to_s
    histogram.each do |key, value|
      puts "#{key}: #{'*' * value}"
    end
  end

  private

  def array_to_histogram(array)
    return if array.empty?
    temp_histogram = {}
    array.each do |letter|
      if temp_histogram[letter].nil?
        temp_histogram[letter] = 1
      else
        temp_histogram[letter] += 1
      end
    end
    temp_histogram
  end
end

text = Textogram.new(text: "HELLO World!")

# text.create_histogram(case_sensitive: false, special_characters: true, whitespace: true)
# puts '------------'
# text.to_s
# text.create_histogram(case_sensitive: false, special_characters: false, whitespace: true)
# puts '------------'
# text.to_s
# text.create_histogram(case_sensitive: false, special_characters: false, whitespace: false)
# puts '------------'
# text.to_s
# text.create_histogram(case_sensitive: false, special_characters: true, whitespace: false)
# puts '------------'
# text.to_s

text_empty = Textogram.new(text: "")

text_empty.to_s
text_empty.create_histogram
