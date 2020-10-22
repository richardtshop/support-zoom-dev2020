#### TO DO
# Build out user class
# Build out UI

# User has name and array of books attributes
# Look - returns all books in a library array
class User
end

class Book
  attr_reader :title, :pages
  
  def initialize(title, pages)
    validateDetails(title, pages)
    @title = title
    @pages = pages
  end
  
  def validateDetails(title, pages = 1)
    unless (title.is_a? String) && (title.length > 0)
      raise "Invalid book title"
    end
    
    unless (pages.is_a? Integer) && (pages > 0)
      raise "Invalid pages value"
    end
  end
end

class Library
  MAX_BOOKS = 18 
  attr_reader :books
  
   def initialize(books = []) 
    if books.length > MAX_BOOKS 
      raise "Maxiumum books allowed: #{MAX_BOOKS}, you tried to create a library with #{books.length} books."
    end  
    @books = books
  end
  
  def look
    if @books.length == 0
      puts "The library is empty"
    else
      puts "There are currently #{@books.length} books in the library:"
      @books.each_with_index {|book, index| puts "#{index+1}: #{book.title} (#{book.pages} pages)"}
    end
  end
  
  def add_book(book)
    if @books.length > MAX_BOOKS  
      puts "The library is full."
      return false 
    end
    
    @books << book
    puts "#{book.title} added to library."
    true
  end
  
  def remove_book(book_title)
    if book_title.is_a? String && book_title.length > 0
      book_index = @books.find_index{|book| book.title.downcase == book_title.downcase}
    end
    
    unless book_index == nil
      @books.delete_at(book_index)
    end
    # @books.delete_at(book_index) unless book_index == nil
  end
end

books = [
  Book.new("The Way of Kings", 1000),
  Book.new("Pandora's Star", 504),
  Book.new("The Hobbit", 310),
  Book.new("Thinking, Fast and Slow", 499),
  Book.new("The Little Prince", 120),
  Book.new("The Chronicles of Narnia", 400),
  Book.new("Oryx and Crake", 550),
  Book.new("Winnie-the-Pooh", 40),
  Book.new("The House at Pooh Corner", 60),
  Book.new("A Christmas Carol", 390),
  Book.new("Oil!", 528),
  Book.new("Dracula", 432),
  Book.new("The Prince", 201),
  Book.new("How I Manage",3),
  Book.new("Charlotte's Webb", 150),
  Book.new("The Northern Lights", 420),
  Book.new("La Belle Savage", 395)
]

library = Library.new(books)

library.look
# library.add_book(Book.new("Chicken and the Egg", 100))
puts library.remove_book("The Way of Kings").title # Returns book title
puts library.remove_book(1) # Returns nothing
library.look

