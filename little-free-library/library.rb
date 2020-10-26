class User
  attr_reader :name, :books
  
  def initialize(name)
    @name = name
    @books = [Book.new("Dave",200)]
  end

  def take_book(library, book_title)
    removed_book = library.remove_book(book_title)
    
    if removed_book.nil?
      puts"That book isn't in the library."
    else
      @books << removed_book
      puts "#{removed_book.title} has been added to your current books."
    end
  end
  
  def place_book(library, book_title)
    if (book_title.is_a? String) && (book_title.length > 0)
      book = @books.find{|book| book.title.downcase == book_title.downcase}
    end
    
    if book == nil
      puts "You don't currently have that book."
    else
      book_added = library.add_book(book)
      if book_added
        @books.delete(book)
        puts "You no longer have #{book.title}."
      end
    end
  end
  
  def view_current_books
    return puts "You currently have no books." if @books.size == 0
    puts "These are your current books:"
    @books.each_with_index {|book, index| puts "#{index+1}: #{book.title} (#{book.pages} pages)"}
    puts "\n"
  end
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
      puts "\n"
    end
  end
  
  def add_book(book)
    if @books.length >= MAX_BOOKS  
      puts "The library is full."
      return false 
    end
    
    @books << book
    puts "#{book.title} added to library."
    true
  end
  
  def remove_book(book_title)
    if (book_title.is_a? String) && (book_title.length > 0)
      book = @books.find{|book| book.title.downcase == book_title.downcase}
    end
    unless book == nil
      puts "#{book.title} removed from library."
      @books.delete(book)
    end
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
  Book.new("The Northern Lights", 424),
  Book.new("The Subtle Knife", 502),
  Book.new("La Belle Savage", 395)
]

library = Library.new(books)

def menu_choices(choice, library, user)
  case choice
  when 1
    library.look
  when 2
    print "Enter the title of the book you would like to take: "
    title = gets.chomp
    user.take_book(library, title)
  when 3
    return puts "You currently have no books." if user.books.size == 0
    user.view_current_books
    print "Enter the title of the book you would like to place in the library: "
    title = gets.chomp
    user.place_book(library, title)
  end
end

puts "Welcome to the little library"
print "What is your name: "

name = gets.chomp

user = User.new(name == "" ? "anonymous" : name)
puts "Hello, #{user.name}!"

loop do

  puts "What would you like to do?"
  puts "1. View all books in the library"
  puts "2. Take a book from the library"
  puts "3. Place a book in the library"
  puts "4. Exit"
  print "Please enter your choice: "

  choice = gets.chomp.to_i

  while choice <= 0 || choice > 4
    puts "Invalid choice, please try again"
    choice = gets.chomp.to_i
  end

  if choice == 4
    puts "Goodbye"
    break
  end
  
  menu_choices(choice, library, user)
end