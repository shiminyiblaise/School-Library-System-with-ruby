require_relative '../classes/rental'

class RentalManager
  def initialize(book_manager, people_manager)
    @book_manager = book_manager
    @people_manager = people_manager
    @rentals = []
  end

  def create_rental
    if @book_manager.books.empty? || @people_manager.people.empty?
      puts "You need both books and people to create rentals."
      return
    end

    puts "Select book by number:"
    @book_manager.books.each_with_index { |b, i| puts "#{i + 1}) #{b.title}" }
    book_index = gets.chomp.to_i - 1

    puts "Select person by number:"
    @people_manager.people.each_with_index { |p, i| puts "#{i + 1}) #{p.name} (#{p.class})" }
    person_index = gets.chomp.to_i - 1

    print "Date (yyyy-mm-dd): "
    date = gets.chomp
    @rentals << Rental.new(date, @book_manager.books[book_index], @people_manager.people[person_index])
    puts "Rental created!"
  end

  def list_rentals_for_person
    print "Enter person ID: "
    id = gets.chomp.to_i
    person_rentals = @rentals.select { |r| r.person.id == id }
    if person_rentals.empty?
      puts "No rentals for this person."
    else
      person_rentals.each { |r| puts "#{r.date}: \"#{r.book.title}\" by #{r.book.author}" }
    end
  end
end
