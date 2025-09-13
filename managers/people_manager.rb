require_relative '../classes/student'
require_relative '../classes/teacher'

class PeopleManager
  attr_reader :people

  def initialize
    @people = []
  end

  def list_people
    if @people.empty?
      puts "No people found."
    else
      @people.each { |p| puts "[#{p.class}] #{p.name}, Age: #{p.age}, ID: #{p.id}" }
    end
  end

  def create_person
    puts "Create Student (1) or Teacher (2)?"
    option = gets.chomp.to_i
    print "Age: "
    age = gets.chomp.to_i
    print "Name: "
    name = gets.chomp

    if option == 1
      print "Parent permission? [Y/N]: "
      permission = gets.chomp.downcase == 'y'
      @people << Student.new(age, name, parent_permission: permission)
    elsif option == 2
      print "Specialization: "
      specialization = gets.chomp
      @people << Teacher.new(age, specialization, name)
    else
      puts "Invalid choice"
    end
  end
end
