# book.rb

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental unless @rentals.include?(rental)
  end
end
# Example usage:
# book = Book.new('1984', 'George Orwell')
# puts book.title # Output: 1984
# puts book.author # Output: George Orwell
