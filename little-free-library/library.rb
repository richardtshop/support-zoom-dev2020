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
  
  def name=(new_value)
    @name = new_value
  end
  
  def books
    @books = []
  end
  
  def name
    @name
  end
  
  def books
    @books
  end
  
end


def look
end

def take
end

def place
  
end

library = Library.new
library.name = "Neighbourhood library"
puts library.name