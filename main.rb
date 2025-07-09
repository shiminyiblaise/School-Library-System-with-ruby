#main.rb
# This is the main entry point for the School Library System application.
# It initializes the app and provides a command-line interface for user interaction.
require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/classroom'
require_relative 'classes/book'
require_relative 'classes/rental'
require_relative 'classes/decorator'
require_relative 'classes/capitalize_decorator'
require_relative 'classes/trimmer_decorator'
require_relative 'app'

def demo_tests
  puts '--- Testing Person, Student, Teacher ---'
  person = Person.new(16, 'Alex', false)
  puts "#{person.name} can use services? #{person.can_use_services?}"

  student = Student.new(17, nil, 'Jamie')
  puts "#{student.name} plays: #{student.play_hooky}"

  teacher = Teacher.new(35, 'Mathematics', 'Mrs. Rose')
  puts "#{teacher.name} can use services? #{teacher.can_use_services?}"
  puts "#{teacher.name} teaches: #{teacher.specialization}"

  puts "\n--- Updating Attributes ---"
  student.name = 'Chris'
  puts "Updated Student's Name: #{student.name}"
  teacher.specialization = 'Physics'
  puts "Updated Teacher's Specialization: #{teacher.specialization}"

  puts "\n--- Testing Decorators ---"
  # Add decorator tests here if needed
end

def main
  app = App.new
  puts 'Welcome to the School Library App!'

  loop do
    puts "\nPlease choose an option by entering a number:"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'

    choice = gets.chomp.to_i
    case choice
    when 1 then app.list_books
    when 2 then app.list_people
    when 3 then app.create_person
    when 4 then app.create_book
    when 5 then app.create_rental
    when 6 then app.list_rentals_for_person
    when 7
      puts 'Thank you for using this app!'
      break
    else
      puts 'Invalid option. Please try again.'
    end
  end
end

# Uncomment the next line to run demo tests
# demo_tests

main
