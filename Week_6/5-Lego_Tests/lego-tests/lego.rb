class LegoHat
  attr_accessor :size, :colour, :style

  def initialize(size, colour, style)
    @size = size
    @colour = colour
    @style = style
  end

  def to_s
    "a #{size} #{colour} #{style}"
  end
end

class LegoItem
  attr_accessor :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def to_s
    "a #{@weight} gram #{@name}"
  end

  private

  def heavy?(threshold)
    @weight > threshold
  end
end

class LegoMinifigure
  attr_accessor :name, :hat, :left_item, :right_item

  def initialize(name, hat = nil, left_item = nil, right_item = nil)
    @name = name
    @hat = hat
    @left_item = left_item
    @right_item = right_item
  end

  def to_s
    "A Lego minifigure named #{@name}#{hat_words}#{left_item_words}#{right_item_words}."
  end

  def hat_words
    if @hat
      ", who is wearing #{@hat}"
    else
      ""
    end
  end

  def left_item_words
    if @left_item
      item_connector = if @hat.nil?
        ", who is holding"
      else
        " and is holding"
      end
      "#{item_connector} #{@left_item} in the left hand"
    else
      ""
    end
  end

  def right_item_words
    if @right_item
      item_connector = if @hat.nil? && @left_item.nil?
        ", who is holding"
      elsif @left_item.nil?
        " and is holding"
      else
        " and "
      end
      "#{item_connector} #{@right_item} in the right hand"
    else
      ""
    end
  end

  def stylish?
    @hat.colour == "red" || @hat.colour == "blue"
  end

  def swap_hands
    temp = @right_item
    @right_item = @left_item
    @left_item = temp
    self
  end

  def wear_hat(new_hat)
    @hat = new_hat
  end

  def place_in_left_hand(new_item)
    @left_item = new_item
  end

  def place_in_right_hand(new_item)
    @right_item = new_item
  end

  def strong?
    @left_item.is_heavy(10) || @right_item.is_heavy(10)
  end
end

def lego_hat
  @lego ||= LegoHat.new(4, "blue", "baseball")
end

def lego_item
  @lego_item ||= LegoItem.new("sign", 10)
end

def lego_figure(hat: true, left_item: true, right_item: true)
  data = []
  data << 'Alan'
  data_hat = hat ? lego_hat : nil
  data << data_hat
  data_left_item = left_item ? lego_item : nil
  data << data_left_item
  data_right_item = right_item ? lego_item : nil
  data << data_right_item 
  LegoMinifigure.new(*data)
end

puts lego_figure(hat: false, left_item: false)
