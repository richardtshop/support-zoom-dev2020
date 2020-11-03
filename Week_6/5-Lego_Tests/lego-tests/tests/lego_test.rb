# Tests

require 'minitest/autorun'
require_relative '../lego'

class LegoHatTest < Minitest::Test
  def setup
    @hat = LegoHat.new('large', 'blue', 'baseball')
  end

  def test_initialize_creates_lego_hat
    assert_equal(LegoHat, @hat.class)
  end

  def test_initialize_correct_attributes
    assert_equal('large', @hat.size)
    assert_equal('blue', @hat.colour)
    assert_equal('baseball', @hat.style)
  end

  def test_to_string_for_lego_hat
    actual = @hat.to_s
    expected = "a large blue baseball"
    assert_equal(actual, expected)
  end
end

class LegoItemTest < Minitest::Test
  def setup
    @mug = LegoItem.new("mug", 20)
  end

  def test_initialize_creates_lego_item
    assert_instance_of(LegoItem, @mug)
  end

  def test_initialize_correct_attributes
    assert_equal("mug", @mug.name)
    assert_equal(20, @mug.weight)
  end

  def test_to_string_creates_string
    actual = @mug.to_s
    expected = "a 20 gram mug"
    assert_equal(actual, expected)
  end

  def test_is_heavy_threshold_greater_than_weight
    refute(@mug.is_heavy(50))
  end

  def test_is_heavy_threshold_less_than_weight
    assert(@mug.is_heavy(5))
  end

  def test_is_heavy_threshold_equal_to_weight
    refute(@mug.is_heavy(20))
  end
end

class LegoMinifigureTest < Minitest::Test
  def setup
    @stylish_hat = LegoHat.new('large', 'blue', 'baseball')
    @unstylish_hat = LegoHat.new('large', 'yellow', 'baseball')
    @left_phone = LegoItem.new('phone', 5)
    @right_hammer = LegoItem.new('hammer', 400)
    @figure_empty = LegoMinifigure.new('Douglas')
    @figure_stylish_hat = LegoMinifigure.new('Douglas', @stylish_hat)
    @figure_unstylish_hat = LegoMinifigure.new('Douglas', @unstylish_hat)
    @figure_hat_left_item = LegoMinifigure.new('Douglas', @stylish_hat, @left_phone)
    @figure_hat_right_item = LegoMinifigure.new('Douglas', @stylish_hat, nil, @right_hammer)
    @figure_right_item_left_item = LegoMinifigure.new('Douglas', nil, @left_phone, @right_hammer)
    @figure_left_item = LegoMinifigure.new('Douglas', nil, @left_phone)
    @figure_right_item = LegoMinifigure.new('Douglas', nil, nil, @right_hammer)
    @figure_all_items = LegoMinifigure.new('Douglas', @unstylish_hat, @left_phone, @right_hammer)
    @figure_left_heavy_right_empty = LegoMinifigure.new('Douglas', @unstylish_hat, @right_hammer, nil)
    @figure_left_heavy_right_light = LegoMinifigure.new('Douglas', @unstylish_hat, @right_hammer, @left_phone)
    @figure_left_empty_right_light = LegoMinifigure.new('Douglas', @unstylish_hat, nil, @left_phone)
    @figure_left_and_right_heavy = LegoMinifigure.new('Douglas', @unstylish_hat, @right_hammer, @right_hammer)
    @figure_left_and_right_light = LegoMinifigure.new('Douglas', @unstylish_hat, @left_phone, @left_phone)
  end

  def test_initialize_creates_object
    assert_kind_of(LegoMinifigure, @figure_all_items)
  end

  def test_initialize_correct_attributes
    assert_nil(@figure_empty.hat)
    assert_nil(@figure_empty.left_item)
    assert_nil(@figure_empty.right_item)
    assert_kind_of(LegoHat, @figure_all_items.hat)
    assert_equal(LegoItem, @figure_all_items.left_item.class)
    assert_instance_of(LegoItem, @figure_all_items.right_item)
  end

  def test_to_string_for_lego_figure_with_all_items_and_hat
    actual = @figure_all_items.to_s
    expected = "A Lego minifigure named Douglas, who is wearing a large yellow baseball and is holding a 5 gram phone in the left hand and a 400 gram hammer in the right hand."
    assert_equal(actual, expected)
  end

  def test_to_string_for_lego_figure_no_items_or_hat
    actual = @figure_empty.to_s
    expected = "A Lego minifigure named Douglas."
    assert_equal(actual, expected)
  end

  def test_hat_words_with_hat
    actual = @figure_all_items.hat_words
    expected = "a large yellow baseball"
    assert_equal(actual, expected)
  end

  def test_left_items_words_with_no_left_item_and_no_hat
    actual = @figure_right_item.left_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_left_items_words_with_no_left_item_and_hat
    actual = @figure_hat_right_item.left_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_left_items_words_with_left_item_and_no_hat
    actual = @figure_left_item.left_item_words
    expected = ", who is holding a 5 gram phone in the left hand"
    assert_equal(actual, expected)
  end

  def test_left_items_words_with_left_item_and_hat
    actual = @figure_hat_left_item.left_item_words
    expected = " and is holding a 5 gram phone in the left hand"
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_no_right_item_and_no_hat_and_no_left_item
    actual = @figure_empty.right_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_no_right_item_and_hat_and_no_left_item
    actual =   @figure_stylish_hat.right_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_no_right_item_and_no_hat_and_left_item
    actual =   @figure_left_item.right_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_no_right_item_and_hat_and_left_item
    actual =   @figure_hat_left_item.right_item_words
    expected = ""
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_right_item_and_hat_and_left_item
    actual = @figure_all_items.right_item_words
    expected = " and a 400 gram hammer in the right hand"
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_right_item_and_hat_and_no_left_item
    actual = @figure_hat_right_item.right_item_words
    expected = " and is holding a 400 gram hammer in the right hand"
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_right_item_and_no_hat_and_left_item
    actual = @figure_right_item_left_item.right_item_words
    expected = " and a 400 gram hammer in the right hand"
    assert_equal(actual, expected)
  end

  def test_right_items_words_with_right_item_and_no_hat_and_no_left_item
    actual = @figure_right_item.right_item_words
    expected = ", who is holdinga 400 gram hammer in the right hand"
    assert_equal(actual, expected)
  end

  def test_is_stylish_returns_if_hat_is_blue
    assert(@figure_stylish_hat.is_stylish?)
  end

  def test_is_stylish_returns_if_hat_is_yellow
    refute(@figure_unstylish_hat.is_stylish?)
  end

  def test_swap_hands_swaps
    actual_left = @figure_all_items.swap_hands.left_item.name
    expected_left = "hammer"
    actual_right = @figure_all_items.swap_hands.right_item.name
    expected_right = "phone"

    assert_equal(actual_left, expected_left)
    assert(actual_right, expected_right)
  end

  def test_wear_hat_adds_hat_to_figure
    @figure_empty.wear_hat(@unstylish_hat)
    actual = @figure_empty.hat.to_s
    expected = "a large yellow baseball"
    asserts_equal(actual, expected)
  end

  def test_is_strong_with_heavy_item
    assert(@figure_left_heavy_right_light.is_strong?) # left item heavy
    assert(@figure_all_items.is_strong?) # right item heavy
    assert(@figure_left_and_right_heavy.is_strong?) # both heavy
  end

  def test_is_strong_with_no_heavy_item
    refute(@figure_left_and_right_light.is_strong?) # none heavy
  end

  # fails as left is light and right is nil, cannot call is_strong on nil
  def test_is_strong_with_single_light_item_in_left_hand
    refute(@figure_hat_left_item.is_strong?) # nothing in right
  end

  def test_is_strong_with_single_heavy_item_in_left_hand
    assert(@figure_left_heavy_right_empty.is_strong?) # nothing in right
  end

  # fails as left is nil so is_strong method cannot be run on nil
  def test_is_strong_with_single_light_item_in_right_hand
    refute(@figure_left_empty_right_light.is_strong?) # nothing in left
  end

  # fails as left is nil so is_strong method cannot be run on nil
  def test_is_strong_with_single_heavy_item_in_right_hand
    assert(@figure_hat_right_item.is_strong?) # nothing in left
  end

  # fails as left is nil so is_strong method cannot be run on nil
  def test_is_strong_with_no_items
    refute(@figure_empty.is_strong?)
  end

  # def test_place_in_left_hand_adds_left_hand_item
  # end

  # def test_place_in_right_hand_adds_right_hand_item
  # end
end
