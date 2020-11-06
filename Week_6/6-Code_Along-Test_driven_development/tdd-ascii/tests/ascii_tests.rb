require 'minitest/autorun'
require_relative '../ascii_art.rb'

class AsciiTest < Minitest::Test
  def setup
    @art_left_0 = AsciiArt.draw_left_triangle(0)
    @art_left_1 = AsciiArt.draw_left_triangle(1)
    @art_left_2 = AsciiArt.draw_left_triangle(2)

    @art_right_0 = AsciiArt.draw_right_triangle(0)
    @art_right_1 = AsciiArt.draw_right_triangle(1)
    @art_right_2 = AsciiArt.draw_right_triangle(2)

    @art_centered_0 = AsciiArt.draw_centered_triangle(0)
    @art_centered_1 = AsciiArt.draw_centered_triangle(1)
    @art_centered_2 = AsciiArt.draw_centered_triangle(2)
    @art_centered_10 = AsciiArt.draw_centered_triangle(7)

    @art_diamond_0 = AsciiArt.draw_diamond(0)
    @art_diamond_1 = AsciiArt.draw_diamond(1)
    @art_diamond_2 = AsciiArt.draw_diamond(2)
    @art_diamond_10 = AsciiArt.draw_diamond(7)
  end

  def test_empty_left_triangle
    expected = ""
    actual = @art_left_0
    assert_equal(expected, actual)
  end

  def test_single_row_left_triangle
    expected = "*\n"
    actual = @art_left_1
    assert_equal(expected, actual)
  end

  def test_multi_row_left_triangle
    expected = "*\n**\n"
    actual = @art_left_2
    assert_equal(expected, actual)
  end

  def test_empty_right_triangle
    expected = ""
    actual = @art_right_0
    assert_equal(expected, actual)
  end

  def test_single_row_right_triangle
    expected = "*\n"
    actual = @art_right_1
    assert_equal(expected, actual)
  end

  def test_multi_row_right_triangle
    expected = " *\n**\n"
    actual = @art_right_2
    assert_equal(expected, actual)
  end

  def test_empty_centered_triangle
    expected = ""
    actual = @art_centered_0
    assert_equal(expected, actual)
  end

  def test_single_centered_triangle
    expected = "*\n"
    actual = @art_centered_1
    assert_equal(expected, actual)
  end

  def test_seven_row_centered_triangle
    expected = "      *\n     * *\n    * * *\n   * * * *\n  * * * * *\n * * * * * *\n* * * * * * *\n"
    actual = @art_centered_10
    assert_equal(expected, actual)
  end

  def test_empty_diamond
    expected = ""
    actual = @art_diamond_0
    assert_equal(expected, actual)
  end

  def test_single_row_diamond
    expected = "*\n"
    actual = @art_diamond_1
    assert_equal(expected, actual)
  end

  def test_three_row_diamond
    expected = " *\n* *\n *\n"
    actual = @art_diamond_2
    assert_equal(expected, actual)
  end

  def test_seven_row_diamond
    expected = "      *\n     * *\n    * * *\n   * * * *\n  * * * * *\n * * * * * *\n* * * * * * *\n * * * * * *\n  * * * * *\n   * * * *\n    * * *\n     * *\n      *\n"
    actual = @art_diamond_7
    assert_equal(expected, actual)
  end
  
end
