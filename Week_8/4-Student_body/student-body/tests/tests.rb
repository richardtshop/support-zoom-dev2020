require 'minitest/autorun'
require_relative '../student_body'

class StudentBodyTest < Minitest::Test
  def setup
    @multiple_classes = StudentBody.new(
      classes: {
        class1: ["William", "Pavel", "Jean Luc", "Mr"],
        class2: ["James", "Leonard", "Montgomery", "Tasha"],
        class3: ["Nyota", "Hikaru", "Worf", "Geordie"],
        class4: ["Dianna", "Beverly", "Wesley", "Miles"],
      }
    )
    @single_class = StudentBody.new(
      classes: {
        class1: ["Rom", "Nog", "Quark"],
      }
    )
  end

  def test_find
    expected = "Montgomery"
    actual = @multiple_classes.find { |student| student.size > 8 }
    assert_equal(expected, actual)
  end

  def test_count
    expected = 16
    actual = @multiple_classes.count
    assert_equal(expected, actual)
  end

  def test_upcase
    expected = "ROM\nNOG\nQUARK\n"
    assert_output(expected) { @single_class.each { |student| puts student.upcase } }
  end

  def test_sort
    expected = ["Nog", "Quark", "Rom"]
    actual = @single_class.sort
    assert_equal(expected, actual)
  end

  def test_reverse
    expected = ["moR", "goN", "krauQ"]
    actual = @single_class.map(&:reverse)
    assert_equal(expected, actual)
  end

  def test_filter
    expected = ["William", "Worf", "Wesley"]
    actual = @multiple_classes.filter { |student| student.split('').first == "W" }
    assert_equal(expected, actual)
  end

  def test_reject
    expected = ["Mr"]
    actual = @multiple_classes.reject { |student| student.size > 2 }
    assert_equal(expected, actual)
  end

  def test_minmax
    expected = ["Beverly", "Worf"]
    actual = @multiple_classes.minmax
    assert_equal(expected, actual)
  end

  def test_all
    refute(@multiple_classes.all? { |student| student.size > 5 })
  end

  def test_none
    assert(@multiple_classes.none? { |student| student.size > 12 })
  end

  def test_one
    refute(@multiple_classes.one? { |student| student.size > 10 })
  end
end
