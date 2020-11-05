require 'minitest/autorun'
require_relative '../ascii_art.rb'

class AsciiTest < Minitest::Test
  def setup
    @art_0 = AsciiArt.draw(0)
    @art_1 = AsciiArt.draw(1)
    @art_2 = AsciiArt.draw(2)
    @art_3 = AsciiArt.draw(3)
    @art_4 = AsciiArt.draw(4)
  end

  def test_triangle
    expected = ""
    actual = @art_0
    assert_equal(expected, actual)
  end
end
