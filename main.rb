# main.rb

require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'book'
require_relative 'rental'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

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
puts "Updated Teac
her's Specialization: #{teacher.specialization}"
puts "\n--- Testing Decorators ---"
