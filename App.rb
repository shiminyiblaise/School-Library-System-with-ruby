










require_relative './managers/book_manager'
require_relative './managers/people_manager'
require_relative './managers/rental_manager'

class App
  def initialize
    @book_manager = BookManager.new
    @people_manager = PeopleManager.new
    @rental_manager = RentalManager.new(@book_manager, @people_manager)
  end

  def run
    loop do
      menu
      option = gets.chomp.to_i
      break if option == 7

      handle_option(option)
    end
    puts "Thank you for using this app!"
  end

  private

  def menu
    puts "\nChoose an option:"
    puts "1 - List all books"
    puts "2 - List all people"
    puts "3 - Create a person"
    puts "4 - Create a book"
    puts "5 - Create a rental"
    puts "6 - List rentals for a person"
    puts "7 - Exit"
  end

  def handle_option(option)
    case option
    when 1 then @book_manager.list_books
    when 2 then @people_manager.list_people
    when 3 then @people_manager.create_person
    when 4 then @book_manager.create_book
    when 5 then @rental_manager.create_rental
    when 6 then @rental_manager.list_rentals_for_person
    else puts "Invalid option"
    end
  end
end

# require_relative './classes/book'
# require_relative './classes/student'
# require_relative './classes/teacher'
# require_relative './classes/rental'
# require_relative './classes/person'

# class App
#   def initialize
#     @books = []
#     @people = []
#     @rentals = []
#   end

#   def list_books
#     if @books.empty?
#       puts 'No books available.'
#     else
#       @books.each_with_index { |book, i| puts "#{i + 1}) \"#{book.title}\" by #{book.author}" }
#     end
#   end

#   def list_people
#     if @people.empty?
#       puts 'No people found.'
#     else
#       @people.each { |p| puts "[#{p.class}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}" }
#     end
#   end

#   def create_person
#     puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
#     option = gets.chomp.to_i

#     print 'Age: '
#     age = gets.chomp.to_i
#     print 'Name: '
#     name = gets.chomp

#     case option
#     when 1
#       print 'Has parent permission? [Y/N]: '
#       permission = gets.chomp.downcase == 'y'
#       @people << Student.new(age, name, parent_permission: permission)
#     when 2
#       print 'Specialization: '
#       specialization = gets.chomp
#       @people << Teacher.new(age, specialization, name)
#     else
#       puts 'Invalid input.'
#     end

#     puts 'Person created successfully.'
#   end

#   def create_book
#     print 'Title: '
#     title = gets.chomp
#     print 'Author: '
#     author = gets.chomp
#     @books << Book.new(title, author)
#     puts 'Book created successfully.'
#   end

#   def create_rental
#     puts 'Select a book by number:'
#     list_books
#     book_index = gets.chomp.to_i - 1

#     puts 'Select a person by number:'
#     list_people
#     person_index = gets.chomp.to_i - 1

#     print 'Date (yyyy-mm-dd): '
#     date = gets.chomp

#     rental = Rental.new(date, @books[book_index], @people[person_index])
#     @rentals << rental
#     puts 'Rental created successfully.'
#   end

#   def list_rentals_for_person
#     print 'Enter person ID: '
#     id = gets.chomp.to_i
#     rentals = @rentals.select { |r| r.person.id == id }

#     if rentals.empty?
#       puts 'No rentals found for this person.'
#     else
#       rentals.each { |r| puts "#{r.date}: \"#{r.book.title}\" by #{r.book.author}" }
#     end
#   end
# end
