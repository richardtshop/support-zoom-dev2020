# Dominos

- [x] Define a class that represents information about a single [domino](http://en.wikipedia.org/wiki/Dominoes), including a `to_s` method to display the domino using asterisks (`*`)and any other characters needed, displaying them similar to how real dominoes would be laid out.

  - [x] Make a commit.

- [x] In a class method, create and return an array containing a [double-six set of dominoes](http://en.wikipedia.org/wiki/Dominoes#mediaviewer/File:Dominomatrix.svg). The dominoes can be in any order.

  - [x] In code at the bottom of the file, use each to display the entire set to check that your code works.
  - [x] Make a commit.

- [ ] Under the class definition, write a method called `swap_tops_and_bottoms`, which will take in a list of dominoes and use the `map` method to return a new list of dominoes in the same order as the old one, but where the top and bottom values have been swapped.
      _For example, if the first domino in the list is a 4-3, the first domino in the new list will be 3-4._

  - [ ] In code at the bottom of the file, use each to display the modified set after the original set (but make sure it’s clear which is which in the printout).
  - [ ] Make a commit.

- [ ] Under the class definition, write a method called `find_dominoes_with` that will take in a number representing how many dots the domino should have at the top or bottom to be in the result list.
  - [ ] Using the find_all method, your `find_dominoes_with` method will return a list of dominoes that have the argument number of dots on the top or bottom.
  - [ ] In code at the bottom of the file, demonstrate that `find_dominoes_with` works.
  - [ ] Make a commit.
