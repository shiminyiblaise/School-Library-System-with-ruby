
class Book
  attr_accessor :title, :author
  attr_reader :id

  def initialize(title, author)
    @id = Random.rand(1..1000)
    @title = title
    @author = author
  end
end
# # book.rb

# class Book
#   attr_accessor :title, :author, :rentals

#   def initialize(title, author)
#     @title = title
#     @author = author
#     @rentals = []
#   end

#   def add_rental(rental)
#     @rentals << rental unless @rentals.include?(rental)
#   end
# end
# # Example usage:
# # book = Book.new('1984', 'George Orwell')
# # puts book.title # Output: 1984
# # puts book.author # Output: George Orwell

# class Book
#   attr_accessor :title, :author

#   def initialize(title, author)
#     @title = title
#     @author = author
#   end
# end
