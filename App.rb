require_relative './classes/book'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/rental'
require_relative './classes/person'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    if @books.empty?
      puts 'No books available.'
    else
      @books.each_with_index { |book, i| puts "#{i + 1}) \"#{book.title}\" by #{book.author}" }
    end
  end

  def list_people
    if @people.empty?
      puts 'No people found.'
    else
      @people.each { |p| puts "[#{p.class}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}" }
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    option = gets.chomp.to_i

    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp

    case option
    when 1
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp.downcase == 'y'
      @people << Student.new(age, name, parent_permission: permission)
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      @people << Teacher.new(age, specialization, name)
    else
      puts 'Invalid input.'
    end

    puts 'Person created successfully.'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books << Book.new(title, author)
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Select a book by number:'
    list_books
    book_index = gets.chomp.to_i - 1

    puts 'Select a person by number:'
    list_people
    person_index = gets.chomp.to_i - 1

    print 'Date (yyyy-mm-dd): '
    date = gets.chomp

    rental = Rental.new(date, @books[book_index], @people[person_index])
    @rentals << rental
    puts 'Rental created successfully.'
  end

  def list_rentals_for_person
    print 'Enter person ID: '
    id = gets.chomp.to_i
    rentals = @rentals.select { |r| r.person.id == id }

    if rentals.empty?
      puts 'No rentals found for this person.'
    else
      rentals.each { |r| puts "#{r.date}: \"#{r.book.title}\" by #{r.book.author}" }
    end
  end
end
