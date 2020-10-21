# User has name and array of books attributes
# Look - returns all books in a library array
class User
end


# Book has title and page count attributes
# Book has no methods
class Book
end

# Library has an array of books attributes (max 18)
# Library has following methods
# Take book - removes a book from the library and returns the book
# Place book - adds a book to the library

class Library
  MAX_BOOKS = 18 # constant for total number of books
  attr_reader :books # allows reading of the books attribute
  
  # initialize called on Object.new - adding it explicitly allows arguments
  def initialize(books = []) # set default to empty book
    @books
  end
  
 # Add book
 # Remove Book
 # All books/ look
 
end


def look
end

def take
end

def place
  
end

library = Library.new
puts library.books
puts library.getMax