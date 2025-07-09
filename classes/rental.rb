# rental.rb

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    book.rentals << self unless book.rentals.include?(self)
    person.rentals << self unless person.rentals.include?(self)
  end
end
# Example usage:
# book = Book.new('1984', 'George Orwell')
# person = Person.new(30, 'John Doe', true)
# rental = Rental.new('2023-10-01', book, person)


class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
end
# Example usage:
# book = Book.new('1984', 'George Orwell')
