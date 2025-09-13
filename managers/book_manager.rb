require_relative '../classes/book'

class BookManager
  attr_reader :books

  def initialize
    @books = []
  end

  def list_books
    if @books.empty?
      puts "No books found."
    else
      @books.each { |b| puts "\"#{b.title}\" by #{b.author}" }
    end
  end

  def create_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    @books << Book.new(title, author)
    puts "Book created!"
  end
end
