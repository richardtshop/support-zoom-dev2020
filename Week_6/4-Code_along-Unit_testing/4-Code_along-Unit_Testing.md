# Code Along: Unit Testing - Grade Book

1. Identify the purpose of the classes.
2. Identify the purpose of the methods.
3. Identify the groups of expected behaviour.
4. Identify the limits of the cases of expected behaviour.
5. Identify any exceptional/error cases.
6. Test each of these cases separately.

## Purpose of the classes

### GradeBook

This class' purpose is to create objects that represent a book of student grades which can store grades as well as transform them.

### Float

This class is for the creation of Float objects so numerical grades as floats can be converted to letter grades and adds this functionality to the `Float` class

## Purpose of the methods

### GradeBook methods

`initialize`

The initialize method sets the @grades instance variable to an empty hash with a default value of 0.

`add_grade`

To add a student and their grade to the @grades hash, or update an existing student.

`get_grade`

Returns the the grade value from the hash, accessing by converting the student name to a symbol. If the key/symbol doesn't exist, the default value of 0 is returned.

`letter_grades`

Loops through the each value in the hash, and returns a new hash where each value has been transformed using `to_grade`

`letter_grade`

This method reads like it should take a student name and transform their grade to a letter and return it. However `grade` is not defined, so this method throws an error.

Poentially could be something like:

```ruby
  def letter_grade(student)
    grades[student.to_sym].to_grade
  end
```

### Float methods

`to_grade`

Float has a single method `to_grade` which assigns the value of the float (using to_f, which in a float is equivalent to `self`) to the variable `number`. The method returns a letter value depending on the float's value.

## Groups of expected behaviour

### Gradebook

`@grades` hash should be created correctly

`add_grade`

- given a student name and grade, these will be added to the @grades hash
- if a student name exists in the hash, their grade will be updated
- all student names are stored as symbols
- all grades are stored as floats

`get_grades`

- given a student name their grade will be returned
- if a student name doesn't exist in the hash, 0 will be returned
- the grade will be correct for the student

`letter_grades`

- all grades in the @grades hash will be be returned as a letter string

`letter_grade`

Will return an error as grade is not defined

### Float

`to_grade`

- will return a string letter grade

## Limits of expected behaviour

### GradeBook

`add_grade`

Two students cannot share the same name. As symbols are unique, a duplicate name would result in the original data being overwritten in a hash.

Student names would need to be entered in a case-sensitive manor as `Christine` and `christine` are not equal. If a name was entered differently, new entries would be added to the hash.

Grade values must be entered as integers or floats. Values passed as strings would convert to 0.0 in `add_grade` using `to_f`.

`get_grade`

Student names would need to be passed as strings to be successfully converted to a symbol using `to_sym`.

Incorrect grades may be returned if previous grades have been overwritten.

`letter_grades`

This should work correctly as all values in `@grades` are set to floats in `add_grade`. F grades may be returned if values were previously passed to `add_grade` as a string.

`letter_grade`
Will throw an error as `grade` is not defined.

### Float

`to_grade` only covers the current ranges

-∞ - 49
50 - 59
60 - 69
70 - 79
80 - ∞

So incorrect values (above 100 or below 0 will not be caught). 660 instead of 60 would result in A instead of D.

## Exceptional/error cases

### GradeBook

`add_grade`
Student names would need to be passed as strings to be successfully converted to a symbol using `to_sym` otherwise a NoMethod error is thrown

`letter_grade`
Will throw an error as `grade` is not defined.

`to_grade`

Expected input is a float, so would return an error if method called on an integer.
