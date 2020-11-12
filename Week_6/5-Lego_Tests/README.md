# Lego Tests

## Classes and methods

Describe each class and each method in the class

### `LegoHat`

This class allows the creation of lego hat objects that have three instance variables:

- size
- colour
- style

#### Methods

`initialize`: sets the values of the instance variables to the passed arguments.
`to_s`: returns a string with the values of the instance variables

### `LegoItem`

This class allows the creation of generic lego item objects that have two instance variables:

- name
- weight

#### Methods

`initialize`: sets the values of the instance variables to the passed arguments.
`to_s`: returns a string with the details of the instance variables
`is_heavy` returns true/false if the weight instance variable exceeds the passed threshold.

### `LegoMinifigure`

This class allows the creation of lego minifigure that has for instance variables:

- name
- hat (`LegoHat`)
- left_item (`LegoItem`)
- right_item (`LegoItem`)

#### Methods

`initialize`: sets the values of the instance variables to the passed arguments. name is required and other values default to `nil`.

`to_s`: Outputs a string that describes the Lego Figure, using the figure's name and interpolating strings from the three `words` methods.

`hat_words`: returns a string based on what variables are set to values or nil.

`left_item_words`: returns a string based on what variables are set to values or nil.

`right_item_words`: returns a string based on what variables are set to values or nil.

`is_stylish`: returns true if the hat colour is red or blue.

`swap_hands`: swaps the items in the left and right hands.

`wear_hat`: sets hat item instance variable to passed argument value.

`place_in_left_hand`: sets left hand instance variable to passed argument value.

`place_in_right_hand`: sets right hand instance variable to passed argument value.

`is_strong`: returns true if either left or right item is heavy, from `item.is_heavy(10)`

## Expected Behaviour

`initialize`: Initializes instance variables using passed values or defaults.

`to_s`: Outputs the interpolated string

`hat_words` expects a threshold value as an argument and this should be numerical and will return a string.

`left_item_words` and `left_item_words` will return a string.
`is_stylish` returns a boolean depeneding on the colour of the hat (if any).

`swap_hands` expects the items in the left and right hands to be swapped
`wear_hat` expects a LegoHat object to be passed.

`place_in_left_hand`/`place_in_right_hand` expects a LegoItem object to be passed.

`is_strong` returns a boolean which depends on the weight of the items in left/right handes.

## Limits

`initialize` for LegoHat has three required parameters, colour is expected to be a string for the `is_stylish?` method to work in `LegoMinifigure`.

`initialize` for LegoItem has two required parameters. Weight is expected to be a string for `is_heavy`.

`initialize` for LegoMinifigure can take between 1 and 4 arguments, as hat, left_item and right_item have default values.

`wear_hat` needs LegoHat object to be passed.

`place_in_left_hand`/`place_in_right_hand` needs a LegoItem object to be passed.

`is_heavy` accepts only one argument.

## Exceptional/error cases

### LegoHat

`to_s`: `size_word` is not defined in string interpolation.

Also, not an error but `colour` is called using the attribute reader set in `attr_accessor` where `@style` is accessing the attribute directly.

Additionally is doesn't look like any of the reader or writer methods set in the `attr_accessor`s in each class are ever used, with all attributes being written and read directly using `@attribute`

## Additional notes

upcase downcase
arguments
numbers
`wear_hat` has to be a hat
is_heavy no question mark
`is` shouldn't be used in method names

```ruby
  def to_s
    "a #{size_word} #{colour} #{@style}"
  end
```

`size_word` isn't defined
`colour` used attribute reader
`@style` accesses instance variable directly and doesn't use attribute reader

`Legoitem`

`attr_accessor :name, :weight`

These are never used. Attributes are set/get directly.

Actually it doesn't look like attribute accessors are ever used, neither to set or get.
