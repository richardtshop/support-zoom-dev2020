# Tests

# colour being uppercase/capitalised
# weight being a number
# colour being a string
# threshold being a number

###
# Comparisons

# assert_equal
# assert_same
# assert_nil
# assert_kind_of
# refute_equal
# refute
#


require 'minitest/autorun'
require_relative '../lego'

class LegoHatTest < Minitest::Test
  def setup
  end

  def test_initialize_creates_object
  end

  def test_initialize_correct_instance_variables
  end

  def test_to_string_creates_string
  end
end

class LegoItemTest < Minitest::Test
  def setup
  end

  def test_initialize_creates_object
  end

  def test_initialize_correct_instance_variables
  end

  def test_to_string_creates_string
  end

  def test_is_heavy_threshold_greater_than_weight
  end

  def test_is_heavy_threshold_less_than_weight
  end

  def test_is_heavy_threshold_equal_to_weight
  end

  def test_is_heavy_threshold_a_string
  end
end

class LegoMinifigureTest < Minitest::Test
  def setup
    @hat = LegoHat.new('large', 'blue', 'baseball')
    @phone = LegoItem.new('phone', 6)
    @hammer = LegoItem.new('hammer', 12)
  end

  def test_initialize_creates_object
  end

  def test_initialize_correct_instance_variables
    figure_no_items = LegoMinifigure.new('Douglas')
    figure_all_items = LegoMinifigure.new('Douglas', @hat, @phone, @hammer)
    assert_nil(figure_no_items.hat)
    assert_nil(figure_no_items.left_item)
    assert_nil(figure_no_items.right_item)

    assert_kind_of(LegoHat, figure_all_items.hat)
    assert_kind_of(LegoItem, figure_all_items.left_item)
    assert_kind_of(LegoItem, figure_all_items.right_item)

    assert_equal(LegoHat, figure_all_items.hat.class)
    assert_equal(LegoItem, figure_all_items.left_item.class)
    assert_equal(LegoItem, figure_all_items.right_item.class)
  end

  def test_to_string_creates_string_with_no_items
  end

  def test_to_string_creates_string_with_all_items
  end

  def test_hat_words_with_no_hat
  end

  def test_hat_words_with_hat
  end

  def test_left_items_words_with_no_left_item
  end

  def test_left_items_words_with_left_item_and_no_hat
  end

  def test_left_items_words_with_left_item_and_hat
  end

  def test_right_items_words_with_no_right_item
  end

  def test_right_items_words_with_right_item_and_no_hat_nor_left_item
  end

  def test_right_items_words_with_right_item_and_hat_and_no_left_item
  end

  def test_right_items_words_with_right_item_and_hat_and_left_item
  end

  def test_is_stylish_returns_if_hat_is_stylish_colour
  end

  def test_is_stylish_returns_if_hat_name_is_capitalized
  end

  def test_swap_hands_swaps_items_between_left_and_right_hands
  end

  def test_swap_hands_swaps_left_hand_empty
  end

  def test_swap_hands_swaps_right_hand_empty
  end

  def test_swap_hands_swaps_both_hands_empty
  end

  def test_wear_hat_adds_hat_to
  end

  def test_place_in_left_hand_adds_left_hand_item
  end

  def test_place_in_right_hand_adds_right_hand_item
  end

  def test_is_strong?
  end
end
