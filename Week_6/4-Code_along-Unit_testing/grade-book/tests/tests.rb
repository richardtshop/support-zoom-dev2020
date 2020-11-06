require 'minitest/autorun'
require_relative '../grade_book.rb'

class GradebookTest < Minitest::Test
  def setup
    @grade_book = GradeBook.new
    @grade_book.add_grade("christine", 77)
    @grade_book_empty = GradeBook.new
  end

  def test_initializes_empty_hash
    expected = Hash
    actual = @grade_book_empty.grades
    assert_instance_of(expected, actual)
  end

  def test_initializes_empty_hash_with_zero_default
    expected = 0
    actual = @grade_book_empty.grades["invalid_name"]
    assert_equal(expected, actual)
  end

  def test_add_grade_to_book_as_float
    @grade_book.add_grade("mark", 92)
    expected = 92.0
    actual = @grade_book.grades[:mark]
    assert_equal(expected, actual)
  end

  def test_gets_grade_from_book
    expected = 77
    actual = @grade_book.get_grade("christine")
    assert_equal(expected, actual)
  end

  def test_gets_zero_grade_from_book_for_non_existing_student
    expected = 0
    actual = @grade_book.get_grade("dave")
    assert_equal(expected, actual)
  end

  def test_gradebook_converts_numerical_grades_to_letter_grade
    expected = { christine: 'B' }
    actual = @grade_book.letter_grades
    assert_equal(expected, actual)
  end
  # failing test

  def test_gradebook_converts_single_numerical_grade_to_letter_grade
    expected = 'B'
    actual = @grade_book.letter_grade("christine")
    assert_equal(expected, actual)
  end
end

class FloatTest < Minitest::Test
  def setup
    @float_in_bounds = 75.0
    @float_negative = -10.0
    @float_over_100 = 110.0
  end

  def test_numerical_float_grade_returns_letter
    expected = 'D'
    actual = 50.0.to_grade
    assert_equal(expected, actual)
  end

  # failing tests
  def test_negative_grade_returns_error
    expected = @float_negative.to_grade
    assert_raises(StandardError) { expected }
  end

  def test_out_of_upper_bounds_grade_returns_error
    expected = @float_over_100.to_grade
    assert_raises(StandardError) { expected }
  end
end
