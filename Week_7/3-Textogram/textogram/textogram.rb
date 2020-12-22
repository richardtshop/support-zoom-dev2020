class Textogram
  attr_reader :text, :histogram_letters, :histogram_words

  def initialize(text:)
    return puts "Text cannot be an empty string!" if text.empty?
    @histogram_letters = {}
    @histogram_words = {}
    @text = text
  end

  def letter_histogram(case_sensitive: false, special_characters: false, whitespace: false, sort_by_frequency: false)
    return puts "Text cannot be an empty string!" if text.nil?
    histogram_text_array = format_text(
      input_text: text,
      case_sensitive: case_sensitive,
      special_characters: special_characters,
      whitespace: whitespace,
      split_delimeter: ''
    )
    @histogram_letters = array_to_histogram(histogram_text_array)
    @histogram_letters = histogram_letters.sort_by { |_word, count| -count } if sort_by_frequency
    histogram_letters
  end

  def word_histogram(case_sensitive: false, special_characters: false, sort_by_frequency: false)
    return puts "Text cannot be an empty string!" if text.nil?
    histogram_text_array = format_text(
      input_text: text,
      case_sensitive: case_sensitive,
      special_characters: special_characters,
      whitespace: true,
      split_delimeter: ' '
    )
    @histogram_words = array_to_histogram(histogram_text_array)
    @histogram_words = histogram_words.sort_by { |_word, count| -count } if sort_by_frequency
    histogram_words
  end

  def to_s
    return puts "Text is empty!" if text.nil?
    unless histogram_letters.empty?
      puts "Letters histogram:"
      histogram_letters.each do |key, value|
        puts "#{key}: #{'*' * value}"
      end
    end

    unless histogram_words.empty?
      puts "Letters histogram:"
      histogram_words.each do |key, value|
        puts "#{key}: #{'*' * value}"
      end
    end
  end

  private

  def format_text(
    input_text:,
    case_sensitive:,
    special_characters:,
    whitespace: false,
    split_delimeter:
  )
    formatted_text = input_text.clone
    formatted_text.downcase! unless case_sensitive
    formatted_text.gsub!(/\s+/, '') unless whitespace
    formatted_text.gsub!(/[^a-zA-Z ]/, '') unless special_characters
    formatted_text.strip!
    text_array(formatted_text, split_delimeter)
  end

  def text_array(string, delimiter)
    string.split(delimiter).sort
  end

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

puts "Text histogram:"
text = Textogram.new(text: "HELLO World!")
text.letter_histogram(case_sensitive: true, whitespace: true)
text.to_s
text.letter_histogram(special_characters: true, whitespace: true)
text.to_s
text.letter_histogram(special_characters: true, sort_by_frequency: true)
text.to_s
text.letter_histogram
text.to_s

puts '---------------'
puts "Empty histogram:"
empty = Textogram.new(text: "")
puts empty.letter_histogram
empty.to_s

puts '---------------'
puts "Whitespace histogram:"
whitespace_histo = Textogram.new(text: "   Hello everyone      ")
puts whitespace_histo.letter_histogram
whitespace_histo.to_s

puts '---------------'
puts "Word histogram:"
metamorphosis = Textogram.new(
  text: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What's happened to me?\" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad. \"How about if I sleep a little bit longer and forget all this nonsense\", he thought, but that was something he was unable to do because he was used to sleeping on his right, and in his present state couldn't get into that position. However hard he threw himself onto his right, he always rolled back to where he was. He must have tried it a hundred times, shut his eyes so that he wouldn't have to look at the floundering legs, and only stopped when he began to feel a mild, dull pain there that he had never felt before. \"Oh, God\", he thought, \"what a strenuous career it is that I've chosen! Travelling day in and day out. Doing business like this takes much more effort than doing your own business at home, and on top of that there's the curse of travelling, worries about making train connections, bad and irregular food, contact with different people all the time so that you can never get to know anyone or become friendly with them. It can all go to Hell!\"'"
)

metamorphosis.word_histogram(sort_by_frequency: true)
metamorphosis.to_s
metamorphosis.word_histogram(case_sensitive: true, special_characters: true)
puts metamorphosis.word_histogram
metamorphosis.to_s
